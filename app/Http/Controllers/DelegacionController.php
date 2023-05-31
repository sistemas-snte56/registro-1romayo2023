<?php

namespace App\Http\Controllers;

use App\Models\Delegacion;
use App\Http\Requests\StoreDelegacionRequest;
use App\Http\Requests\UpdateDelegacionRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Region;

class DelegacionController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:ver-delegacion|crear-delegacion|editar-delegacion|borrar-delegacion')->only('index');
        $this->middleware('permission:crear-delegacion', ['only'=>['create','store']]);
        $this->middleware('permission:editar-delegacion', ['only'=>['edit','update']]);
        $this->middleware('permission:borrar-delegacion', ['only'=>['destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $regiones = Region::all();
        $delegaciones = Delegacion::paginate(50);
        return view('delegaciones.index',['regiones'=>$regiones,'delegaciones'=>$delegaciones]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $regiones = Region::all();
        return view('delegaciones.crear',['regiones'=>$regiones]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreDelegacionRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDelegacionRequest $request)
    {
        $request->validate([
            'nomenclatura' => 'required',
            'delegacion' => 'required|unique:delegaciones',
            'nivel' => 'required',
            'sede' => 'required',
            'region'=>'required',       
        ],[
            'nomenclatura.required' => 'Selecciona un tipo de nomenclatura',
            'delegacion.required' => 'La delegación es requerida',
            'delegacion.unique' => 'Esta delegación ya esta registrada',
            'nivel.required' => 'Cual es el nivel educativo',
            'sede.required' => 'Ingresa una sede',
            'region.required' => 'Selecciona región' 
        ]);

        $delegacion = new Delegacion();


        $delegacion->nomenclatura = $request->input('nomenclatura');
        $delegacion->delegacion = $request->input('delegacion');
        $delegacion->nivel = $request->input('nivel');
        $delegacion->sede = $request->input('sede');
        $delegacion->id_region = $request->input('region');
        $delegacion->save();

        return redirect()->route('delegaciones.index')->with('success', 'Se realizó el registro satisfactoriamente.');

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Delegacion  $delegacion
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $regiones = Region::all();
        $delegacion = Delegacion::find($id);
        return view('delegaciones.editar',['regiones'=>$regiones,'delegacion'=>$delegacion]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateDelegacionRequest  $request
     * @param  \App\Models\Delegacion  $delegacion
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDelegacionRequest $request, Delegacion $delegacion, $id)
    {
        $delegacion = Delegacion::find($id);
        
        $request->validate([
            'nomenclatura' => 'required',
            'delegacion' => ['required', 'unique:delegaciones,delegacion,'.$id],
            'nivel' => 'required',
            'sede' => 'required',
            'region'=>'required',       
        ],[
            'nomenclatura.required' => 'Selecciona un tipo de nomenclatura',
            'delegacion.required' => 'La delegación es requerida',
            'delegacion.unique' => 'Esta delegación ya esta registrada',
            'nivel.required' => 'Cual es el nivel educativo',
            'sede.required' => 'Ingresa una sede',
            'region.required' => 'Selecciona región' 
        ]);
            
        $delegacion->nomenclatura = $request->input('nomenclatura');
        $delegacion->delegacion = $request->input('delegacion');
        $delegacion->nivel = $request->input('nivel');
        $delegacion->sede = $request->input('sede');
        $delegacion->id_region = $request->input('region');
        $delegacion->save();

        return redirect()->route('delegaciones.index')->with('success', 'Información actualizada.');
    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Delegacion  $delegacion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Delegacion $delegacion, $id)
    {
        $delegacion = Delegacion::find($id);
        // dd($delegacion->nomenclatura);

        if ($delegacion->nomenclatura == "DELEGACION") {
            $mensaje = "La Delegación";
        } else {
            $mensaje = "El Centro de Trabajo";
        }

        // dd($mensaje);

        $delegacion->delete();

        // return redirect("delegacion");

        return redirect()->route('delegaciones.index')->with('danger', $mensaje.' se elimino satisfactoriamente.');
    
    }
}
