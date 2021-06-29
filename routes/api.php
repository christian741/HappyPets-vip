<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

/**Route for login API */
Route::post('login', 'ApiController@login');

/**Route for register API */
Route::post('register', 'ApiController@register');

/**Route for details user API */
Route::middleware('auth:api')->group(function () {
    Route::post('details', 'ApiController@user_info');
});
