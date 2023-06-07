<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RolController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\DelegacionController;
use App\Http\Controllers\RegionController;


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

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();


// Route::prefix('admin')->group(['middleware'=>['auth']],function(){
//     Route::resource('roles', RolController::class);
//     Route::resource('users', UserController::class);
//     Route::resource('usuarios', UsuarioController::class);
//     Route::resource('delegaciones', DelegacionController::class);
//     Route::resource('regiones', RegionController::class)->except(['create','store','show','edit','update','destroy']);
// });



Route::prefix('admin')->middleware(['auth'])->group(function(){
    Route::resource('regiones', RegionController::class)->except(['create','store','show','edit','update','destroy']);
    Route::resource('delegaciones', DelegacionController::class)->except('show');
    Route::resource('roles', RolController::class)->except('show');
    Route::resource('users', UserController::class)->except('show');
    Route::resource('usuarios', UsuarioController::class);
    Route::get('usuarios/region/{id}','UsuarioController@obtenerDelegaciones')->middleware('regiones.middleware');
});

Route::middleware(['auth'])->group(function(){
    Route::resource('usuario',EdicionController::class);
});