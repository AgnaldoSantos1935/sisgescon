<?php

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

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/contratos', [App\Http\controllers\ContratoController::class,'index'])->name('contratos');
Route::get('/incluircontrato', [App\Http\controllers\ContratoController::class,'create'])->name('incluircontrato');
Route::get('/incluirfuncionario', [App\Http\controllers\FuncionarioController::class,'create'])->name('incluirfuncionario');
Route::get('/funcionarios', [App\Http\controllers\FuncionarioController::class,'index'])->name('funcionarios');
Route::get('/incluirPatrimonio', [App\Http\controllers\PatrimonioController::class,'create'])->name('incluirpatrimonio');
Route::get('/patrimonios', [App\Http\controllers\PatrimonioController::class,'index'])->name('patrimonio');