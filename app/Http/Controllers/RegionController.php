<?php

namespace App\Http\Controllers;

use App\Models\Region;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RegionController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:ver-region|crear-region|editar-region|borrar-region')->only('index');
        $this->middleware('permission:crear-region',  ['only'=>['create','store']]);
        $this->middleware('permission:editar-region', ['only'=>['edit','update']]);
        $this->middleware('permission:borrar-region', ['only'=>['destroy']]);
    }
    

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $regiones = Region::all();
        return view('regiones.index',compact('regiones'));
    }

}
