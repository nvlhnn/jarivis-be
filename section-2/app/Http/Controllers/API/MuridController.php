<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class MuridController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $murids = User::where('sekolah_id', "!=", null)->with('sekolah')->get();

        return $this->sendResponse($murids, 'murid list');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name'     => 'required|string',
                'email'     => 'required|email|unique:users,email',
                'sekolah_id' => 'required|exists:sekolah,id',
            ],
        );


        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors(), 400);
        }

        \DB::beginTransaction();
        $user = new User;
        try {

            $user->name = $request->name;
            $user->email = $request->email;
            $user->role = 'murid';
            $user->role_id = 3;
            $user->sekolah_id = $request->sekolah_id;
            $user->created_by = Auth::user()->id;
            $user->save();
        } catch (\Throwable $th) {
            //throw $th;\
            \DB::rollback();
            return $th;
            return $this->sendError('Internal server error.');
        }
        \DB::commit();
        return $this->sendResponse($user, 'murid created');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $murid
     * @return \Illuminate\Http\Response
     */
    public function show(User $murid)
    {
        if ($murid->role_id != 3) {
            return $this->sendError('Resource not found', null, 404);
        }

        return $this->sendResponse($murid->load('sekolah'), 'murid detail');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $murid
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $murid)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name'     => 'required|string',
                'email'     => 'required|email|unique:users,email,' . $murid->id,
                'sekolah_id' => 'required|exists:sekolah,id',
            ],
        );


        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors(), 400);
        }

        \DB::beginTransaction();
        try {

            $murid->name = $request->name;
            $murid->email = $request->email;
            $murid->role = 'murid';
            $murid->role_id = 3;
            $murid->sekolah_id = $request->sekolah_id;
            $murid->created_by = Auth::user()->id;
            $murid->save();
        } catch (\Throwable $th) {
            //throw $th;\
            \DB::rollback();
            return $th;
            return $this->sendError('Internal server error.');
        }
        \DB::commit();
        return $this->sendResponse($murid, 'murid updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $murid
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $murid)
    {
        if ($murid->role_id != 3 || $murid->id == Auth::user()->id) {
            return $this->sendError('Invalid murid id.', null, 400);
        }
        $murid->delete();
        return $this->sendResponse(null, 'murid deleted');
    }
}
