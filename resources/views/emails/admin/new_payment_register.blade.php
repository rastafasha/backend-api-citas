@component('mail::message')
# Hola
<br>
Se has registrado un nuevo pago
<br><br>

* Nombre del banco ***{{ $payment->referencia}}***
<br>
* Método de pago ***{{ $payment->metodo}}***
<br>
* Nombre del banco ***{{ $payment->bank_name}}***
<br>
* Monto ***{{ $payment->monto}}***
<br>
* Nombre ***{{ $payment->nombre}}***
<br>
* Email ***{{ $payment->email}}***

<br><br>
@component('mail::button', [
    'url' => env('APP_URL')
])
    Ir a la web
@endcomponent

Notificaciones automatizadas desde la app
***{{ config('app.name') }}***
@endcomponent
