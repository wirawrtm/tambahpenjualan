<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\DatasgController;


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
    return view('tampil');
});

Route::controller(BookingController::class)->group(function () {
    Route::post('post', 'store');
    Route::post('edit/{id}', 'update');
    Route::get('del/{id}', 'destroy');
    Route::get('/', 'index');
});

