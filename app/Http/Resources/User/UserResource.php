<?php

namespace App\Http\Resources\User;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "id"=>$this->resource->id,
            "name"=>$this->resource->name,
            "email"=>$this->resource->email,
            "password"=>$this->resource->password,
            "rolename"=>$this->resource->rolename,
            "surname"=>$this->resource->surname,
            "phone"=>$this->resource->phone,
            "birth_date"=>$this->resource->birth_date ? Carbon::parse($this->resource->birth_day)->format("Y/m/d") : NULL,
            "gender"=>$this->resource->gender,
            "education"=>$this->resource->education,
            "designation"=>$this->resource->designation,
            "address"=>$this->resource->address,
            "avatar"=> $this->resource->avatar ? env("APP_URL")."storage/".$this->resource->avatar : null,
            "roles"=>$this->resource->roles->first(),
            "created_at"=>$this->resource->created_at ? Carbon::parse($this->resource->created_at)->format("Y/m/d") : NULL,
        ];
    }
}
