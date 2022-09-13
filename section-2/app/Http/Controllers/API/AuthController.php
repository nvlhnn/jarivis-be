<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class AuthController extends BaseController
{
    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors(), 400);
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $input['role'] = 'guest';
        $input['role_id'] = 3;

        // return ($input);
        $user = User::create($input);
        $success['token'] =  $user->createToken($input['email'])->plainTextToken;
        $success['name'] =  $user->name;

        return $this->sendResponse($success, 'register success.');
    }

    /**
     * Login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::user();
            if ($user->role_id == 1) {
                $success['token'] =  $user->createToken($user['email'], ['master:modify'])->plainTextToken;
            } else {
                $success['token'] =  $user->createToken($user['email'])->plainTextToken;
            }
            $success['name'] =  $user->name;

            return $this->sendResponse($success, 'login success.');
        } else {
            return $this->sendError('Unauthorised.', ['error' => 'Unauthorised'], 401);
        }
    }
}
