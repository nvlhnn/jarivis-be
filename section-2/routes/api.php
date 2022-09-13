<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\MuridController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::controller(AuthController::class)->group(function () {
    Route::post('register', 'register');
    Route::post('login', 'login');
});

// Route::apiResource('/murids', App\Http\Controllers\API\MuridController::class);


Route::middleware('auth:sanctum')->group(function () {
    // Route::resource('products', ProductController::class);
    Route::middleware('admin')->group(function () {
        Route::resource('murids', MuridController::class);
    });
});
