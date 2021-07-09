<?php

use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\ProductsController;
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
Route::group(['prefix' => 'v1'], function () {

    Route::get('/categories',[CategoryController::class,'index']);
    Route::post('/categories/store',[CategoryController::class,'store']);

    Route::get('/products',[ProductsController::class,'index']);
    Route::post('/products/store',[ProductsController::class,'store']);
    Route::get('/products/{id}',[ProductsController::class,'productDetail']);
    Route::post('/product/cart',[ProductsController::class,'Cart']);

});
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
