<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\Doctor\DoctorController;

Route::resource('doctors', DoctorController::class);
Route::get('doctors/config', [DoctorController::class, 'config'])->name('config');
Route::post('doctors/store', [DoctorController::class, 'store'])->name('store');
Route::get('doctors/show/{doctor}', [DoctorController::class, 'show'])->name('show');
Route::put('doctors/update/{doctor}', [DoctorController::class, 'update'])->name('update');
Route::delete('doctors/destroy/{doctor}', [DoctorController::class, 'destroy'])->name('destroy');

