<?php

namespace App\Models\Appointment;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Patient\Patient;
use App\Models\Doctor\Specialitie;
use Illuminate\Database\Eloquent\Model;
use App\Models\Appointment\AppointmentPay;
use App\Models\Doctor\DoctorScheduleJoinHour;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Appointment extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable=[
        "doctor_id",
        "patient_id",
        "date_appointment",
        "speciality_id",
        "doctor_schedule_join_hour_id",
        "user_id",
        "amount",
        "status_pay",

    ];

    public function setCreatedAtAttribute($value)
    {
    	date_default_timezone_set('America/Caracas');
        $this->attributes["created_at"]= Carbon::now();
    }

    public function setUpdatedAtAttribute($value)
    {
    	date_default_timezone_set("America/Caracas");
        $this->attributes["updated_at"]= Carbon::now();
    }

    // relaciones

    public function doctor() {
        return $this->belongsTo(User::class,"doctor_id");
    }

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function patient()
    {
        return $this->belongsTo(Patient::class);
    }
    
    public function doctor_schedule_join_hour()
    {
        return $this->belongsTo(DoctorScheduleJoinHour::class);
    }

    public function payments()
    {
        return $this->hasMany(AppointmentPay::class);
    }

    public function speciality()
    {
        return $this->belongsTo(Specialitie::class);
    }

    // relaciones

    // filtro buscador

    public function scopefilterAdvance($query,$speciality_id, $name_doctor, $date){
        
        if($speciality_id){
            $query->where("speciality_id", $speciality_id);
        }

        if($name_doctor){
            $query->whereHas("doctor", function($q)use($name_doctor){
                $q->where("name", "like","%".$name_doctor."%")
                    ->orWhere("surname", "like","%".$name_doctor."%");
            });
        }

        if($date){
            $query->whereDate("date_appointment", Carbon::parse($date)->format("Y-m-d"));
        }
        return $query;
    }
}
