<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class RegisterAppointment extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $apointment;

    public function __construct($apointment)
    {
        $this->apointment = $apointment;
    }

    /**
     * Get the message content definition.
     */
    public function build()
    {
        $apointment = $this->apointment;
        return $this->view('emails.apointment_register', compact('apointment'));
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Register Appointment',
        );
    }
}
