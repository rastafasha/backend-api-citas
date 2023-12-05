<?php

namespace App\Models;

use Carbon\Carbon;
use App\Traits\HavePermission;
use App\Jobs\NewUserRegisterJob;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Traits\HasRoles;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Models\Role;

class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable, HavePermission,  HasRoles;
    /*
    |--------------------------------------------------------------------------
    | goblan variables
    |--------------------------------------------------------------------------
    */

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'rolename',

        //staff
        'surname',
        'phone',
        'birth_date',
        'gender',
        'education',
        'designation',
        'address',
        'avatar',

    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    const SUPERADMIN = 'SUPERADMIN';
    const GUEST = 'GUEST';

    // public function setCreateAttribute($value){
    //     date_default_timezone_set("America/Venezuela"); 
    //     $this->attribute['created_at']= Carbon::now();
    // }

    // public function setUpdateAttribute($value){
    //     date_default_timezone_set("America/Venezuela"); 
    //     $this->attribute['updated_at']= Carbon::now();
    // }


    /*
    |--------------------------------------------------------------------------
    | functions
    |--------------------------------------------------------------------------
    */

    public function isSuperAdmin()
    {
        return $this->role === User::SUPERADMIN;
    }

    public function isGuest()
    {
        return $this->role === User::GUEST;
    }

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */



    // public function roles()
    // {
    //     return $this->hasMany(Role::class, 'id');
    // }
    


}
