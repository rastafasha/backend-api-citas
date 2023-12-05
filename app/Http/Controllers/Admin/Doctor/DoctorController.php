<?php

namespace App\Http\Controllers\Admin\Doctor;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Doctor\Specialitie;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use App\Models\Doctor\DoctorScheduleHour;
use App\Http\Resources\User\UserCollection;

class DoctorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search = $request->search;
        $users = User::where("name", "like", "%".$search."%")
                    ->orWhere("surname", "like", "%".$search."%")
                    ->orWhere("email", "like", "%".$search."%")
                    ->orderBy("id", "desc")
                    ->get();
                    
        return response()->json([
            "users" => UserCollection::make($users),
            
        ]);          
    }
    public function config()
    {
        $roles = Role::all();

        $specialities = Specialitie::where("state",1)->get();

        $hours_days = collect([]);
        
        $doctor_schedule_hours = DoctorScheduleHour::all();
        foreach($doctor_schedule_hours->groupBy("hour") as $key => $schedule_hour){
            // dd($schedule_hour);
            $hours_days->push([
                "hour" => $key,
                "items" => $schedule_hour,
            ]);

        }
        return response()->json([
            "roles" => $roles,
            "specialities" => $specialities,
            "hours_days" => $hours_days,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
