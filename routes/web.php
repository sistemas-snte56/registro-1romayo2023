<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RolController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\DelegacionController;
use App\Http\Controllers\RegionController;
use App\Http\Controllers\ReporteController;
// use App\Exports\UsersExport;

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
    
    // Route::resource('delegaciones', DelegacionController::class)->except('show');
    Route::get('delegaciones', 'DelegacionController@index')->name('delegaciones.index');
    Route::get('delegaciones/create','DelegacionController@create')->name('delegaciones.create');
    Route::post('delegaciones', 'DelegacionController@store')->name('delegaciones.store');
    Route::get('delegaciones/{delegacion:slug}','DelegacionController@show')->name('delegaciones.show');
    Route::get('delegaciones/{delegacion:slug}/edit','DelegacionController@edit')->name('delegaciones.edit');
    Route::patch('delegaciones/{delegacion:slug}','DelegacionController@update')->name('delegaciones.update');
    Route::delete('delegaciones/{delegacion:slug}','DelegacionController@destroy')->name('delegaciones.destroy');

    Route::resource('roles', RolController::class)->except('show');

    Route::get('reporte', 'ReporteController@index')->name('reporte.index');
    Route::get('reporte/gestores', 'ReporteController@gestores')->name('reporte.gestores');
    Route::get('reporte/regiones', 'ReporteController@regiones')->name('reporte.regiones');
    Route::get('reporte/usuarios', 'ReporteController@usuarios')->name('reporte.usuarios');
    Route::get('reporte/delegaciones', 'ReporteController@delegaciones')->name('reporte.delegaciones');

    Route::get('reporte/gestores/export','ReporteController@exportGestor')->name('reporte.users.export');
    Route::get('reporte/regiones/export','ReporteController@exportRegiones')->name('reporte.regiones.export');
    Route::get('reporte/delegaciones/export','ReporteController@exportDelegaciones')->name('reporte.delegaciones.export');
    Route::get('reporte/usuarios/export','ReporteController@exportUsuarios')->name('reporte.usuarios.export');

    // Route::resource('users', UserController::class)->except('show');
    Route::get('users', 'UserController@index')->name('users.index');
    Route::get('users/create','UserController@create')->name('users.create');
    Route::post('users', 'UserController@store')->name('users.store');
    Route::get('users/{user:slug}','UserController@show')->name('users.show');
    Route::get('users/{user:slug}/edit','UserController@edit')->name('users.edit');
    Route::patch('users/{user:slug}','UserController@update')->name('users.update');
    Route::delete('users/{user:slug}','UserController@destroy')->name('users.destroy');    
        

    // Route::resource('usuarios', UsuarioController::class);
    Route::get('usuarios', 'UsuarioController@index')->name('usuarios.index');
    Route::get('usuarios/create','UsuarioController@create')->name('usuarios.create');
    Route::post('usuarios', 'UsuarioController@store')->name('usuarios.store');
    Route::get('usuarios/{usuario:slug}','UsuarioController@show')->name('usuarios.show');
    Route::get('usuarios/{usuario:slug}/edit','UsuarioController@edit')->name('usuarios.edit');
    Route::patch('usuarios/{usuario:slug}','UsuarioController@update')->name('usuarios.update');
    Route::delete('usuarios/{usuario:slug}','UsuarioController@destroy')->name('usuarios.destroy');
    Route::get('usuarios/region/{id}','UsuarioController@obtenerDelegaciones')->middleware('regiones.middleware');
});

Route::middleware(['auth'])->group(function(){
    // Route::resource('usuario',EdicionController::class);
    Route::get('usuario', 'EdicionController@index')->name('usuario.index');
    Route::get('usuario/create','EdicionController@create')->name('usuario.create');
    Route::post('usuario', 'EdicionController@store')->name('usuario.store');
    Route::get('usuario/{usuario:slug}','EdicionController@show')->name('usuario.show');
    Route::get('usuario/{usuario:slug}/edit','EdicionController@edit')->name('usuario.edit');
    Route::patch('usuario/{usuario:slug}','EdicionController@update')->name('usuario.update');
    Route::delete('usuario/{usuario:slug}','EdicionController@destroy')->name('usuario.destroy');    
});