<?php

namespace App\Models\Patient;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Patient extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable=[
        'name',
        'surname',
        'email',
        'phone',
        'n_doc',
        'birth_date',
        'gender',
        'education',
        'address',
        'avatar',
        'antecedent_family',
        'antecedent_personal',
        'antecedent_alerg',
        'ta',
        'temperature',
        'fc',
        'fr',
        'peso',
        'current_desease',
    ];

    public function setCreateAttribute($value){
        date_default_timezone_set("America/Caracas"); 
        $this->attribute['created_at']= Carbon::now();
    }

    public function setUpdateAttribute($value){
        date_default_timezone_set("America/Caracas"); 
        $this->attribute['updated_at']= Carbon::now();
    }

     public function person()
    {
        return $this->hasOne(PatientPerson::class, 'patient_id');
    }
}
