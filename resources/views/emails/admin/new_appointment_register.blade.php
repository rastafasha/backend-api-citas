@component('mail::message')
# Hola
<br>
Se has registrado una nueva cita
<br><br>

* Nombre del Paciente ***{{ $appointment ["name"].'' .$appointment ["surname"]}}***
<br>
* Email del Paciente ***{{ $appointment["email"]}}***
<br>
* fecha ***{{ $appointment->metodo}}***
<br>
* hora inicio ***{{ $appointment ["hour_start_format"]}}***
<br>
* Hora fin ***{{ $appointment ["hour_end_format"]}}***
<br>
* Especialidad ***{{ $appointment ["speciality_name"]}}***
<br>
* doctor ***{{ $appointment->email}}***

<br><br>
@component('mail::button', [
    'url' => env('APP_URL')
])
    Ir a la web
@endcomponent

Notificaciones automatizadas desde la app
***{{ config('app.name') }}***
@endcomponent
