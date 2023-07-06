<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Models\User;
use App\Models\Region;
use App\Models\Delegacion;
use App\Models\Usuario;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

use App\Exports\UsersExport;
use Maatwebsite\Excel\Facades\Excel;




class UserController extends Controller
{

    function __construct()
    {
        // $this->middleware('permission:ver-user|crear-user|editar-user|borrar-user')->only('index');

        $this->middleware('permission:ver-user', ['only'=>['index','show']]);
        $this->middleware('permission:crear-user', ['only'=>['index','create','store']]);
        $this->middleware('permission:editar-user', ['only'=>['edit','update']]);
        $this->middleware('permission:borrar-user', ['only'=>['destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // dd($request->input('search'));
        // $users = User::paginate(60);
        $searchTerm = $request->input('search');
        $users = User::where('activo',true)
                        ->where('name','LIKE','%'.$searchTerm.'%')
                        ->paginate(50);

        // $users = User::where('name','LIKE','%'.$searchTerm.'%')->paginate(10);
        return view ('admin.users.index',['users'=>$users, 'searchTerm'=>$searchTerm]);
    }


    /**
     * Show the form for creating the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //abort(404);
        $roles = Role::all()->pluck('name','name');
        $roles = ['' => 'Selecciona opción'] + $roles->toArray();
        $regiones = Region::all();

        return view('admin.users.crear',['roles'=>$roles, 'regiones'=>$regiones]);        
    }

    /**
     * Store the newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //abort(404);
        // dd($request);

        $request->validate([
            'name'=>'required',
            'email'=>'required|email|unique:users,email',
            'password'=>'required|same:confirm-password',
            'roles'=>'required',
        ],[
            'name.required'=>'Nombre requerido',
            'email.required'=>'Correo electrónico requerido',
            'email.unique'=>'Correo electrónico ya se ha utilizado',
            'email.email'=>'Se requiere formato de correo electrónico',
            'password.required'=>'Contraseña requerida',
            'roles.required'=>'Roles requerido',
        ]);

        $user = new User();
        $user->name = strtoupper($request->input('name'));
        $user->email = $request->input('email');
        $user->password = Hash::make($request->input('password'));
        $user->assignRole($request->input('roles'));
        $user->id_delegacion = $request->input('delegacion');
        $user->slug = Str::slug($user->name);
        

        //dd($user);
        $user->save();

        return redirect()->route('users.index')->with('success','Usuario Registrado satisfactoriamente');
            
    }





    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        $usuarios = Usuario::where('id_users',$user->id)->paginate(30);
        return view('admin.users.ver',compact('usuarios','user'));
    }








    /**
     * Show the form for editing the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        // Capturar datos de tabla y encontrar el ID
        // $user = User::find($id);
        $roles = Role::pluck('name','name')->all();
        $userRoles = $user->roles->pluck('name','name')->all();
        $region = Region::all();
        $delegacion = Delegacion::all();

        // return view('admin.users.editar', ['user'=>$user, 'roles'=>$roles, 'userRoles'=>$userRoles, 'region'=>$region]);
        return view('admin.users.editar', compact('user','roles','userRoles','region','delegacion'));  
    }

    /**
     * Update the resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {

        $user = User::find($user->id);

        $this->validate($request,[
            'name'=>'required',
            'email'=> ['required', 'email', 'unique:users,email,'. $user->id],
            'password'=>'same:confirm-password',
            'roles'=>'required',            
        ]);

        $input = $request->all();

        if (!empty($input['password'])) {
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = Arr::except($input, array('password'));

        }

        DB::table('model_has_roles')->where('model_id',$user->id)->delete();

        $user->assignRole($request->input('roles'));
        
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->id_delegacion = $request->input('delegacion');
        $user->slug = Str::slug($user->name);

        $user->save();

        return redirect()->route('users.index');
    }

    /**
     * Remove the resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // User::find($id)->delete();
        // return redirect()->route('users.index');
        
        $user = User::find($id);
        $user->activo = false;
        $user->save();
        return redirect()->route('users.index');
    }


    
}
