<?php

use App\Http\Controllers\SellController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProductController;
use App\Models\TypesProduct;
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
    return redirect('/home');
});

Route::get('/home', function () {
    return view('home');
});

/**
 * [Request Auth]
 */
Route::get('login', [AuthController::class, 'indexLogin'])->name('login');
Route::get('register', [AuthController::class, 'indexRegister'])->name('register');

Route::post('login', [AuthController::class, 'login'])->name('login.post');
Route::post('register', [AuthController::class, 'signUp'])->name('register.post');



/**Route for middleware Group */
Route::middleware('auth')->group(function () {

    /** Main Routes */
    Route::post('logout', [AuthController::class, 'logout'])->name('logout.post');
    Route::get('/admin', [AdminController::class, 'index']);

    /**Product Controller */
    Route::get('/products', [ProductController::class, 'index'])->name('products');
    Route::get('/createProducts', function(){
        $typeProducts = TypesProduct::all();
        return view('Admin.Products.createProduct', compact('typeProducts'));
    })->name('createProducts');
    Route::post('registerProducts', [ProductController::class, 'create_Products'])->name('registerProducts.post');
    /**Pets */

    //SellController
    Route::get('/sellsToday', [SellController::class, 'index'])->name('sellsToday');
    Route::post('registerSells', [SellController::class, 'create_sellsToday'])->name('register.sells');
});
