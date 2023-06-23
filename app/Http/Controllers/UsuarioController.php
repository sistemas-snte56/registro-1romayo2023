<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use App\Models\Genero;
use App\Models\Nivel;
use App\Models\Region;
use App\Models\Delegacion;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Requests\StoreUsuarioRequest;
use App\Http\Requests\UpdateUsuarioRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;


class UsuarioController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:ver-usuario|crear-usuario|editar-usuario|borrar-usuario')->only('index');
        $this->middleware('permission:ver-usuario', ['only'=>['show']]);
        $this->middleware('permission:crear-usuario', ['only'=>['create','store']]);
        $this->middleware('permission:editar-usuario', ['only'=>['edit','update']]);
        $this->middleware('permission:borrar-usuario', ['only'=>['destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $searchTerm = $request->input('search');

        $usuarios = Usuario::where('nombre', 'LIKE', '%' . $searchTerm .'%')
                            ->orWhere('apaterno', 'LIKE', '%' . $searchTerm .'%')
                            ->orWhere('amaterno', 'LIKE', '%' . $searchTerm .'%')
                            ->orWhere('npersonal', 'LIKE', '%' . $searchTerm .'%')
                            ->paginate(40);
        $regiones = Region::all();


/*
$searchTerm = 'John';

$users = User::where('name', 'LIKE', '%'.$searchTerm.'%')
             ->orWhere('last_name', 'LIKE', '%'.$searchTerm.'%')
             ->orWhere('email', 'LIKE', '%'.$searchTerm.'%')
             ->get();*/

        return view('admin.usuarios.index',['usuarios'=>$usuarios, 'regiones' =>$regiones, 'searchTerm' => $searchTerm]);  


    }



    public function obtenerDelegaciones($id)
    {
        // $delegaciones = DB::table('delegaciones')->where('id_region',$id)->pluck('delegacion','id');
        //dd($delegaciones);
        $delegaciones= DB::table('delegaciones')
                        ->select('id','delegacion','nivel','sede')
                        ->where('id_region',$id)
                        ->get();
        return response()->json($delegaciones);
    }




    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $genero = Genero::all()->pluck('genero','id');
        $genero  =  [''=>'Selecciona opción'] + $genero->toArray();

        $niveles = Nivel::all()->pluck('nivel','id');
        $niveles = [''=>'Selecciona opción'] + $niveles->toArray();

        // $regiones = Region::all()->pluck('region','id');
        $regiones = Region::all();
        $delegaciones = Delegacion::all();

        return view('admin.usuarios.crear', ['genero' => $genero , 'niveles' => $niveles, 'regiones' => $regiones, 'delegaciones' => $delegaciones]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreUsuarioRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUsuarioRequest $request)
    {
        // dd($request);

       $request->validate([
            'nombre' => 'required',
            'a_paterno' => 'required',
            'a_materno' => 'nullable',
            'curp' => 'required',
            'rfc' => 'required',
            'genero' => 'required',
            'telefono' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:9|max:10',
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
            $usuario->id_delegacion = $request->input('delegacion');      
            $usuario->id_users = \Illuminate\Support\Facades\Auth::user()->id;     
            $usuario->slug = Str::slug($usuario->nombre . ' ' . $usuario->apaterno . ' ' . $usuario->amaterno); 
            $usuario->save();  


        return redirect()->route('usuarios.index')->with('success', 'Usuario registrado satisfactoriamente.');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function show(Usuario $usuario)
    {
        // $usuario = Usuario::find($usuario->id);
        //$usuario = Usuario::findOfFile($usuario->id);
        // dd($usuario);
        return view('admin.usuarios.ver',['usuario'=>$usuario]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function edit(Usuario $usuario)
    {
        // $usuario = Usuario::find($usuario->id);
        $genero = Genero::all();
        $nivel = Nivel::all();
        $region = Region::all();
        $delegacion = Delegacion::all();

        return view('admin.usuarios.editar', ['usuario'=>$usuario, 'genero' => $genero , 'nivel' => $nivel, 'region' => $region, 'delegacion' => $delegacion]);        

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateUsuarioRequest  $request
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUsuarioRequest $request, Usuario $usuario)
    {
        // dd($request);

        $usuario = Usuario::find($usuario->id);

        $request->validate([
            'nombre' => 'required',
            'apaterno' => 'required',
            'amaterno' => 'nullable',
            'curp' => 'required',
            'rfc' => 'required',
            'genero' => 'required',
            'telefono' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:9|max:10',
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
        $usuario->id_delegacion = $request->input('delegacion');   
        $usuario->slug = Str::slug($usuario->nombre . ' ' . $usuario->apaterno . ' ' . $usuario->amaterno);        
        
        //$usuario->id_users = \Illuminate\Support\Facades\Auth::user()->id;      
        
        
        /*if (!empty($input['password'])) {
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = Arr::except($input, array('password'));

        }*/        
        
        $usuario->save();  

        // return view ("usuarios.message", ['msg' => "Registro actualizado"]);



        $usuarios = Usuario::all();
        $regiones = Region::all();

        //dd($usuarios);
        // return view('usuarios.index',['usuarios'=>$usuarios, 'regiones' =>$regiones]); 
        
        
        // return view('usuarios.index',['usuarios'=>$usuarios, 'regiones' =>$regiones])->with('secondary','Usuario registrado satisfactoriamente.')->with('info','Usuario no modificado.'); 
        
        return redirect()->route('usuarios.index')->with('secondary','Usuario actualizado satisfactoriamente.');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Usuario $usuario)
    {
        $usuario = Usuario::find($usuario->id);
        $usuario->delete();

        // return redirect("usuario");

        return redirect()->route('usuarios.index')->with('danger', 'Usuario eliminado satisfactoriamente.');

    }
}
