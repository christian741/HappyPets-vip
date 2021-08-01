<?php

use App\Http\Controllers\SellController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ServiceHairdressController;
use App\Models\ServiceHairdress;
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
    Route::get('getProducts/{id}', [ProductController::class, 'show'])->name('products.getProducts');
    Route::get('editProducts/{id}', [ProductController::class, 'edit'])->name('products.editProducts');
    Route::post('registerProducts', [ProductController::class, 'create_Products'])->name('registerProducts.post');
    Route::put('updateProduct/{id}', [ProductController::class, 'edit_Products'])->name('updateProduct.put');
    Route::delete('deleteProducts', [ProductController::class, 'delete_Products'])->name('deleteProducts.delete');
    /**Pets */
    Route::get('/pets', [ServiceHairdressController::class, 'index'])->name('pets');
    Route::get('/searchPet', [PetCon::class, 'index'])->name('searchPet');

    /**HairAddress */
    Route::get('/viewService', [ServiceHairdressController::class, 'index'])->name('viewService');
    Route::get('/createServicesHair', [ServiceHairdressController::class, 'viewCreate'])->name('createServicesHair');
    Route::post('registerServiceHair', [ProductController::class, 'registerServiceHair'])->name('registerServiceHair.post');
    //SellController
    Route::get('/sellsToday', [SellController::class, 'index'])->name('sellsToday');
    Route::post('registerSells', [SellController::class, 'create_sellsToday'])->name('register.sells');

    //Customers
    Route::get('/customers', [UserController::class, 'getAllUser'])->name('customers');
    Route::get('/createCustomer', function(){
        return view('Admin.Customers.createCustomers');
    })->name('createCustomer');
    Route::get('/user/{id}', [UserController::class, 'show']);
    Route::get('/editCustomers', [UserController::class, 'getAllUser'])->name('customers');
    Route::get('/createCustomer', function(){
        return view('Admin.Customers.createCustomers');
    })->name('createCustomer');
});
