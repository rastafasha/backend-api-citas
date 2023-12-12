<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Appointment\AppointmentController;

Route::post('appointment/filter', [AppointmentController::class, 'filter'])->name('filter');
Route::get('appointment/config', [AppointmentController::class, 'config'])->name('config');
Route::get('appointment/patient', [AppointmentController::class, 'query_patient'])->name('query_patient');

Route::get('appointment', [AppointmentController::class, 'index'])->name('index');
Route::post('appointment/store', [AppointmentController::class, 'store'])->name('store');
Route::get('appointment/show/{id}', [AppointmentController::class, 'show'])->name('show');
Route::post('appointment/update/{appointment}', [AppointmentController::class, 'update'])->name('update');
Route::delete('appointment/destroy/{id}', [AppointmentController::class, 'destroy'])->name('destroy');
