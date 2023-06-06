<?php

namespace App\Http\Controllers;

use App\Models\Edicion;

use App\Models\Usuario;
use App\Models\Genero;
use App\Models\Nivel;
use App\Models\Region;
use App\Models\Delegacion;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


class EdicionController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:ver-usuario-deleg|crear-usuario-deleg|editar-usuario-deleg|borrar-usuario-deleg')->only('index');
        $this->middleware('permission:ver-usuario-deleg', ['only'=>['show']]);
        $this->middleware('permission:crear-usuario-deleg', ['only'=>['create','store']]);
        $this->middleware('permission:editar-usuario-deleg', ['only'=>['edit','update']]);
        $this->middleware('permission:borrar-usuario-deleg', ['only'=>['destroy']]);
    }



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $usuarios = Usuario::where('id_users',\Illuminate\Support\Facades\Auth::user()->id)->paginate(20);
        // $usuarios = DB::table('usuarios')->where('id_users',\Illuminate\Support\Facades\Auth::user()->id);

        $regiones = Region::all();
        $usuarios = Usuario::where('id_users', \Illuminate\Support\Facades\Auth::user()->id )->paginate(50);

        return view('usuario.index',compact('usuarios','regiones'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $usuario = Usuario::where('id_users', \Illuminate\Support\Facades\Auth::user()->id )->get();

        $genero = Genero::all()->pluck('genero','id');
        $genero  =  [''=>'Selecciona opción'] + $genero->toArray();
        $niveles = Nivel::all()->pluck('nivel','id');
        $niveles = [''=>'Selecciona opción'] + $niveles->toArray();

        // $regiones = Region::all()->pluck('region','id');
        $regiones = Region::all();
        $delegacion = Delegacion::all();

        // return view('usuario.crear', ['genero' => $genero , 'niveles' => $niveles, 'regiones' => $regiones, 'delegacion' => $delegacion, 'usuario'=>$usuario]);
    
        return view('usuario.crear', compact('genero','niveles','regiones','delegacion','usuario'));
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
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function show(Edicion $edicion)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function edit(Edicion $edicion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Edicion $edicion)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Edicion $edicion)
    {
        //
    }
}
