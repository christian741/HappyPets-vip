<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('login', [AuthController::class,'indexLogin'])->name('login');
Route::get('register', [AuthController::class,'indexRegister'])->name('register');


/**Route for login API */
Route::post('login', [AuthController::class,'login'])->name('login.post');

/**Route for register API */
Route::post('register', [AuthController::class,'signUp'])->name('register.post');

/**Route for details user API */
Route::middleware('auth')->group(function () {
    Route::get('/admin', 'AdminController@index');
    Route::get('/superadmin', 'SuperAdminController@index');
    
});
