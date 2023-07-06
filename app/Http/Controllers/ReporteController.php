<?php

namespace App\Http\Controllers;

use App\Models\Edicion;
use Illuminate\Support\Facades\Auth;
use App\Models\Usuario;
use App\Models\Genero;
use App\Models\User;
use App\Models\Nivel;
use App\Models\Region;
use App\Models\Delegacion;
use App\Models\Reporte;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Pagination\Paginator;

use App\Exports\UsersExport;
use App\Exports\RegionExport;
use App\Exports\DelegacionExport;
use App\Exports\UsuarioExport;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ReporteController extends Controller
{

    function __construct()
    {
        // $this->middleware('permission:ver-reporte|crear-reporte|editar-reporte|borrar-reporte')->only('index');
        // $this->middleware('permission:ver-reporte', ['only'=>['show']]);
        // $this->middleware('permission:crear-reporte', ['only'=>['create','store']]);
        // $this->middleware('permission:editar-reporte', ['only'=>['edit','update']]);
        // $this->middleware('permission:borrar-reporte', ['only'=>['destroy']]);

        $this->middleware('permission:reporte.index', ['only'=>['index']] );
        $this->middleware('permission:reporte.gestores', ['only'=>['gestores']] );
        $this->middleware('permission:reporte.reguibes', ['only'=>['regiones']] );
        $this->middleware('permission:reporte.usuarios', ['only'=>['usuarios']] );
        $this->middleware('permission:reporte.delegaciones', ['only'=>['delegaciones']] );
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $totalGestores = User::count();
        $totalRegiones = Region::count();
        $totalUsuarios = Usuario::count();
        $totalDelegaciones = Delegacion::count();

        $regionesTotales = Region::all();

        //dd($regionesTotales)->all();
        
        /*$regionI = Delegacion::selectRaw('
            COUNT(*) AS total,
            SUM(delegacion LIKE "%D-I-%") AS totalDelegDI,
            SUM(delegacion LIKE "%D-II-%") AS totalDelegDII,
            SUM(delegacion LIKE "%D-III-%") AS totalDelegDIII,
            SUM(delegacion LIKE "%D-IV-%") AS totalDelegDIV,
            SUM(delegacion LIKE "%C.T.%") AS totalDelegCT
        ')->join('regiones', 'delegaciones.id_region','=','regiones.id')
          -> where('regiones.id','=',1)
          ->first();*/


        $delegaciones = Delegacion::selectRaw('
            COUNT(*) AS total,
            SUM(delegacion LIKE "%D-I-%") AS totalDelegDI,
            SUM(delegacion LIKE "%D-II-%") AS totalDelegDII,
            SUM(delegacion LIKE "%D-III-%") AS totalDelegDIII,
            SUM(delegacion LIKE "%D-IV-%") AS totalDelegDIV,
            SUM(delegacion LIKE "%C.T.%") AS totalDelegCT
        ')->first();



        
        return view('admin.reports.index', compact('totalGestores','delegaciones','totalRegiones','regionesTotales','totalUsuarios'));

    }

    public function gestores()
    {
        $totalGestores = User::count();

        $gestores = User::select(
            'users.name' ,
            'users.email',
            'delegaciones.delegacion',
            'delegaciones.nivel',
            'delegaciones.sede',
            'regiones.region',
            'regiones.sede as sede_region'
        )
        ->join('delegaciones' , 'users.id_delegacion', '=', 'delegaciones.id')
        ->join('regiones' , 'delegaciones.id_region', '=', 'regiones.id')
        ->orderBy('users.id', 'ASC')
        ->get();

        return view('admin.reports.gestores',compact('gestores'));
    }

    public function regiones()
    {
        $delegaciones = Delegacion::count();
        // $regiones = Region::select(
        //     'regiones.region',
        //     'regiones.sede',
        //     DB::raw('COUNT(*) as total')
        // )
        // ->join('delegaciones', 'regiones.id', '=', 'delegaciones.id_region')
        // ->groupBy('regiones.region')
        // ->groupBy('regiones.sede')
        // ->get();

        $delegacionesPorRegion = DB::table('delegaciones')
                    ->join('regiones', 'regiones.id', '=', 'delegaciones.id_region')
                    ->selectRaw('regiones.id, regiones.region, regiones.sede,
                                COUNT(*) Total_Delegaciones,
                                SUM(CASE WHEN delegaciones.delegacion LIKE "%D-I-%" THEN 1 ELSE 0 END) AS DI_total,
                                SUM(CASE WHEN delegaciones.delegacion LIKE "%D-II-%" THEN 1 ELSE 0 END) AS DII_total,
                                SUM(CASE WHEN delegaciones.delegacion LIKE "%D-III-%" THEN 1 ELSE 0 END) AS DIII_total,
                                SUM(CASE WHEN delegaciones.delegacion LIKE "%D-IV-%" THEN 1 ELSE 0 END) AS DIV_total,
                                SUM(CASE WHEN delegaciones.delegacion LIKE "%C.T.%" THEN 1 ELSE 0 END) AS CT_total')
                    ->groupBy('regiones.id')
                    ->get();
     
        return view ('admin.reports.regiones',compact('delegacionesPorRegion','delegaciones'));
    }

    public function usuarios()
    {

        $usuarios = Usuario::select('usuario.id', 'usuario.nombre', 'usuario.apaterno', 'usuario.amaterno', 'usuario.curp', 'usuario.rfc', 'genero.genero', 'usuario.telefono', 'usuario.email', 'usuario.npersonal', 'delegaciones.nivel', 'delegaciones.delegacion', 'regiones.region', 'regiones.sede')
            ->join('genero', 'usuario.id_genero', '=', 'genero.id')
            ->join('delegaciones', 'usuario.id_delegacion', '=', 'delegaciones.id')
            ->join('regiones', 'delegaciones.id_region', '=', 'regiones.id')
            ->orderBy('regiones.region')
            ->orderBy('delegaciones.delegacion')
            ->get();
        
        return view('admin.reports.usuarios', compact('usuarios'));
    }

    public function delegaciones(Request $request)
    {

        $region = $request->input('region');

        //dd($region);

        if(!empty($region)) {
            $delegaciones = Delegacion::where('id_region',$region)->get();
        } else {
            $delegaciones = Delegacion::get();
        }

 
        return view('admin.reports.delegaciones',compact('delegaciones'));
    }


    /**
     * Exportar los usuarios
     */

    public function exportGestor() 
    {
        ini_set('memory_limit','1024M');
        set_time_limit(3000000);
        return Excel::download(new UsersExport, 'gestores.csv');
    }

    public function exportRegiones() 
    {
        ini_set('memory_limit','1024M');
        set_time_limit(3000000);
        return Excel::download(new RegionExport, 'regiones.csv');
        // return Excel::download((new RegionExport)->setEncoding('UTF-8'), 'regiones.csv');
        // return Excel::download(new RegionExport, 'regiones.csv')->header('Content-Type', 'text/csv; charset=UTF-8');
        // return Excel::download(new RegionExport, 'regiones.csv')->withHeaders([
        //     'Content-Type' => 'text/csv; charset=UTF-8',
        // ]);        
    }

    public function exportDelegaciones() 
    {
        ini_set('memory_limit','1024M');
        set_time_limit(3000000);
        return Excel::download(new DelegacionExport, 'delegaciones.csv');
    }

    public function exportUsuarios() 
    {
        ini_set('memory_limit','1024M');
        set_time_limit(3000000);
        return Excel::download(new UsuarioExport, 'usuarios.csv');
    }

}

// return Excel::download((new UsersExport)->setEncoding('UTF-8'), 'users.csv');