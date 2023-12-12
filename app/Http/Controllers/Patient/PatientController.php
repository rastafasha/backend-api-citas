<?php

namespace App\Http\Controllers\Patient;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Patient\Patient;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Patient\PatientPerson;
use Illuminate\Support\Facades\Storage;
use App\Http\Resources\Patient\PatientResource;
use App\Http\Resources\Patient\PatientCollection;

class PatientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search = $request->search;

        $patients = Patient::where(DB::raw("CONCAT(patients.name,' ', IFNULL(patients.surname,''),' ',patients.email)"),
        "like","%".$search."%"
        )->orderBy("id", "desc")
        ->paginate(2);
                    
        return response()->json([
            "total" =>$patients->total(),
            "patients" => PatientCollection::make($patients),
            
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
        $patient_is_valid = Patient::where("n_doc", $request->n_doc)->first();

        if($patient_is_valid){
            return response()->json([
                "message"=>403,
                "message_text"=> 'el paciente ya existe'
            ]);
        }

        if($request->hasFile('imagen')){
            $path = Storage::putFile("patients", $request->file('imagen'));
            $request->request->add(["avatar"=>$path]);
        }

        if($request->birth_date){
            $date_clean = preg_replace('/\(.*\)|[A-Z]{3}-\d{4}/', '',$request->birth_date );
            $request->request->add(["birth_date" => Carbon::parse($date_clean)->format('Y-m-d h:i:s')]);
        }

        $patient = Patient::create($request->all());

        $request->request->add([
            "patient_id" =>$patient->id
        ]);
        PatientPerson::create($request->all());

        return response()->json([
            "message"=>200,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $patient = Patient::findOrFail($id);

        return response()->json([
            "patient" => PatientResource::make($patient),
        ]);
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
        $patient_is_valid = Patient::where("id", "<>", $id)->where("n_doc", $request->n_doc)->first();

        if($patient_is_valid){
            return response()->json([
                "message"=>403,
                "message_text"=> 'el paciente ya existe'
            ]);
        }
        
        $patient = Patient::findOrFail($id);
        
        if($request->hasFile('imagen')){
            if($patient->avatar){
                Storage::delete($patient->avatar);
            }
            $path = Storage::putFile("patients", $request->file('imagen'));
            $request->request->add(["avatar"=>$path]);
        }
        
        if($request->birth_date){
            $date_clean = preg_replace('/\(.*\)|[A-Z]{3}-\d{4}/', '',$request->birth_date );
            $request->request->add(["birth_date" => Carbon::parse($date_clean)->format('Y-m-d h:i:s')]);
        }
        $patient->update($request->all());

        if($patient->person){
            $patient->person->update($request->all());
        }
        return response()->json([
            "message"=>200,
            "patient"=>$patient
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $patient = Patient::findOrFail($id);
        if($patient->avatar){
            Storage::delete($patient->avatar);
        }
        $patient->delete();
        return response()->json([
            "message"=>200
        ]);
    }
}
