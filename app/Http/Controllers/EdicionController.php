<?php

namespace App\Http\Controllers;

use App\Models\Edicion;
use Illuminate\Support\Facades\Auth;
use App\Models\Usuario;
use App\Models\Genero;
use App\Models\Nivel;
use App\Models\Region;
use App\Models\Delegacion;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

class EdicionController extends Controller
{


    /*
    function __construct()
    {
        $this->middleware('permission:ver-usuario-deleg|crear-usuario-deleg|editar-usuario-deleg|borrar-usuario-deleg')->only('index');
        $this->middleware('permission:ver-usuario-deleg', ['only'=>['show']]);
        $this->middleware('permission:crear-usuario-deleg', ['only'=>['create','store']]);
        $this->middleware('permission:editar-usuario-deleg', ['only'=>['edit','update']]);
        $this->middleware('permission:borrar-usuario-deleg', ['only'=>['destroy']]);
    }
*/


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $usuarios = Usuario::where('id_users',\Illuminate\Support\Facades\Auth::user()->id)->paginate(20);
        // $usuarios = DB::table('usuarios')->where('id_users',\Illuminate\Support\Facades\Auth::user()->id);

        // $regiones = Region::all();
        $usuarios = Usuario::where('id_users', \Illuminate\Support\Facades\Auth::user()->id )->paginate(50);

        // return view('usuario.index',compact('usuarios','regiones'));
        return view('usuario.index', compact('usuarios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        /*
            ID: {{ $user = Auth::user()->id;}} <br>
            {{ $user = Auth::user()->name;}} <br>
            <br>
            {{ $user = Auth::user()->delegaciones->regiones->region;}} <br>
            {{$roleName = Auth::user()->getRoleNames()->first();}} <br>

        */



        $delegacionUser = Auth::user()->delegaciones->delegacion; 
        $delegacionUser = $delegacionUser . " " . Auth::user()->delegaciones->sede; 

        $regionUser = Auth::user()->delegaciones->regiones->region . " " . Auth::user()->delegaciones->regiones->sede;

        // dd($regionUser)->all();

        // $usuario = Usuario::where('id_users', \Illuminate\Support\Facades\Auth::user()->id )->get();

        $genero = Genero::all()->pluck('genero','id');
        $genero  =  [''=>'Selecciona opción'] + $genero->toArray();
        $niveles = Nivel::all()->pluck('nivel','id');
        $niveles = [''=>'Selecciona opción'] + $niveles->toArray();

        // $regiones = Region::all()->pluck('region','id');
        // $regiones = Region::all();
        // $delegacion = Delegacion::all();

        // return view('usuario.crear', ['genero' => $genero , 'niveles' => $niveles, 'regiones' => $regiones, 'delegacion' => $delegacion, 'usuario'=>$usuario]);
    
        return view('usuario.crear', compact('genero','niveles', 'delegacionUser', 'regionUser'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Faker $faker)
    {
    //    dd($request)->all();

       $request->validate([
            'nombre' => 'required',
            'a_paterno' => 'required',
            'a_materno' => 'nullable',
            'curp' => 'required',
            'rfc' => 'required',
            'genero' => 'required',
            'telefono' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:10',
            'email' => 'required|email',
            'npersonal' => 'required|numeric|unique:usuario',
            'nivel' => 'required',
            'region' => 'required',
            'delegacion' => 'required',
        ],[
            'nombre.required' => 'El nombre es requerido.',
            'a_paterno.required' => 'El Apellido paterno es requerido.',
            'curp.required' => 'La CURP es requerida.',
            'rfc.required' => 'El RFC es requerido.',
            'genero.required' => 'El genero es requerido.',
            'telefono.required' => 'Se requiere número telefónico.',
            'telefono.regex' => 'El teléfono no debe de contener letras.',
            'telefono.min' => 'El telefóno debe ser de 10 dígitos',
            'telefono.max' => 'El teléfono no debe tener más de 10 dígitos.',
            'email.required' => 'El email es requerido.',
            'email.email' => 'El formato del correo es erroneo.',
            'npersonal.required' => 'El número personal es requerido.',
            'npersonal.numeric' => 'El número personal requiere solo números.',
            'npersonal.unique' => 'El número personal ya esta registrado.',
            'nivel.required' => 'El nivel educativo es requerido.',
            'region.required' => 'La region es requerida.',
            'delegacion.required' => 'La delegacion es requerida.',
        ]);

        //Faker $faker;
        $folio = strtolower(Str::random(4) . '-' . Str::random(4) . '-' . $faker->randomLetter() . $faker->randomNumber(3) . '-' . Str::random(4));
        while(Usuario::where('folio', $folio)->exists()) { //Verifica si el folio ya existe en la base de datos
            $folio = strtolower(Str::random(4) . '-' . Str::random(4) . '-' . $faker->randomLetter() . $faker->randomNumber(3) . '-' . Str::random(4)); //Genera un nuevo folio si el anterior ya existe
        }
        $codigo = substr($folio, -4);
        
        $usuario = new Usuario();
        $usuario->nombre = strtoupper($request->input('nombre'));
        $usuario->apaterno = strtoupper($request->input('a_paterno'));
        $usuario->amaterno = strtoupper($request->input('a_materno'));
        $usuario->curp = strtoupper($request->input('curp'));
        $usuario->rfc = strtoupper($request->input('rfc'));
        $usuario->id_genero = $request->input('genero');
        $usuario->telefono = $request->input('telefono');
        $usuario->email = $request->input('email');
        $usuario->npersonal = $request->input('npersonal');
        $usuario->id_nivel = $request->input('nivel');
        $usuario->id_delegacion = Auth::user()->delegaciones->id;      
        $usuario->id_users = Auth::user()->id;      
        $usuario->slug = Str::slug($usuario->nombre . ' ' . $usuario->apaterno . ' ' . $usuario->amaterno);
        $usuario->folio = $folio;
        $usuario->codigo = $codigo;






        // dd($usuario)->all();

        $usuario->save();  

        return redirect()->route('usuario.index')->with('success', 'Usuario registrado satisfactoriamente.');
        
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function show(Usuario $usuario)
    {
        $userAutenticadoId = Auth::user()->id;
        $usuarioRegistradoporUser = $usuario->id_users;

        if ($userAutenticadoId !== $usuarioRegistradoporUser) {
            abort(403, 'No tiene permiso para ver este usuario');
        } 

        $usuario = Usuario::find($usuario->id);
        return view('usuario.ver',['usuario'=>$usuario]);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function edit(Usuario $usuario)
    {

        $userAutenticadoId = Auth::user()->id;
        $usuarioRegistradoporUser = $usuario->id_users;

        if ($userAutenticadoId !== $usuarioRegistradoporUser) {
            abort(403, 'No tiene permiso para ver este usuario');
        } 


        $usuario = Usuario::find($usuario->id);
        $genero = Genero::all();
        $nivel = Nivel::all();

        $delegacionUser = Auth::user()->delegaciones->delegacion; 
        $delegacionUser = $delegacionUser . " " . Auth::user()->delegaciones->sede; 

        $regionUser = Auth::user()->delegaciones->regiones->region . " " . Auth::user()->delegaciones->regiones->sede;


        $region = Region::all();
        $delegacion = Delegacion::all();

        return view('usuario.editar', ['usuario'=>$usuario, 'genero' => $genero , 'nivel' => $nivel, 'delegacionUser' => $delegacionUser, 'regionUser' => $regionUser]);        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Usuario $usuario)
    {

       $usuario = Usuario::find($usuario->id);


        //dd($request)->all();


        $request->validate([
            'nombre' => 'required',
            'apaterno' => 'required',
            'amaterno' => 'nullable',
            'curp' => 'required',
            'rfc' => 'required',
            'genero' => 'required',
            'telefono' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:10',
            'email' => 'required|email',
            'npersonal' => ['required', 'numeric', 'unique:usuario,npersonal,'. $usuario->id],
            'nivel' => 'required',
            // 'region' => 'required',
            'delegacion' => 'required',
        ],[
            'nombre.required' => 'El nombre es requerido.',
            'apaterno.required' => 'El Apellido paterno es requerido.',
            'curp.required' => 'La CURP es requerida.',
            'rfc.required' => 'El RFC es requerido.',
            'genero.required' => 'El genero es requerido.',
            'telefono.required' => 'Se requiere número telefónico.',
            'telefono.regex' => 'El teléfono no debe de contener letras.',
            'telefono.min' => 'El telefóno debe ser de 10 dígitos',
            'telefono.max' => 'El teléfono no debe tener más de 10 dígitos.',
            'email.required' => 'El email es requerido.',
            'email.email' => 'El formato del correo es erroneo.',
            'npersonal.required' => 'El número personal es requerido.',
            'npersonal.numeric' => 'El número personal requiere solo números.',
            'npersonal.unique' => 'El número personal ya esta registrado.',
            'nivel.required' => 'El nivel educativo es requerido.',
            // 'region.required' => 'La region es requerida.',
            'delegacion.required' => 'La delegacion es requerida.',
        ]);


        // $usuario = new Usuario();
        $usuario->nombre = strtoupper($request->input('nombre'));
        $usuario->apaterno = strtoupper($request->input('apaterno'));
        $usuario->amaterno = strtoupper($request->input('amaterno'));
        $usuario->curp = strtoupper($request->input('curp'));
        $usuario->rfc = strtoupper($request->input('rfc'));
        $usuario->id_genero = $request->input('genero');
        $usuario->telefono = $request->input('telefono');
        $usuario->email = $request->input('email');
        $usuario->npersonal = $request->input('npersonal');
        $usuario->id_nivel = $request->input('nivel');
        $usuario->id_delegacion = Auth::user()->delegaciones->id;      
        $usuario->id_users = Auth::user()->id;      
        $usuario->slug = Str::slug($usuario->nombre . ' ' . $usuario->apaterno . ' ' . $usuario->amaterno);

        // dd($usuario)->all();


        $usuario->save();  


        return redirect()->route('usuario.index')->with('success', $usuario->nombre .  ' actualizado satisfactoriamente.');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Edicion  $edicion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Usuario $usuario)
    {
        $usuario = Usuario::find($usuario->id);
        $usuario->delete();

        // return redirect("usuario");

        return redirect()->route('usuario.index')->with('danger', 'Usuario eliminado satisfactoriamente.');

    }

    public function buscarCodigo(Request $request)
    {
        if (!$request->isMethod('get')) {
            return redirect()->back(); 
        } else {
            $codigoUsuario = $request->input('codigo');
            
            $usuario = Usuario::where('codigo', $codigoUsuario)->first();
            
            if ($usuario) {
                return view('search-code.codigo', compact('usuario'));
            } else {
                return redirect()->back()->with('error', 'El código no se encuentra.');
            }
        }

        
    }
        
    
}
