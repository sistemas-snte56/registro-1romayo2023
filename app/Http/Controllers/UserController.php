<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Arr;

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
    public function index()
    {
        $users = User::paginate(60);
        return view ('admin.users.index',['users'=>$users]);
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

        return view('admin.users.crear',['roles'=>$roles]);        
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
        
        $user->save();

        return redirect()->route('admin.users.index')->with('success','Usuario Registrado satisfactoriamente');

            
    }

    /**
     * Show the form for editing the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Capturar datos de tabla y encontrar el ID
        $user = User::find($id);
        $roles = Role::pluck('name','name')->all();
        $userRoles = $user->roles->pluck('name','name')->all();

        return view('admin.users.editar', ['user'=>$user, 'roles'=>$roles, 'userRoles'=>$userRoles]);
    }

    /**
     * Update the resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        $this->validate($request,[
            'name'=>'required',
            'email'=> ['required', 'email', 'unique:users,email,'. $id],
            'password'=>'same:confirm-password',
            'roles'=>'required',            
        ]);

        $input = $request->all();

        if (!empty($input['password'])) {
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = Arr::except($input, array('password'));

        }

        $user = User::find($id);
        $user->update($input);
        DB::table('model_has_roles')->where('model_id',$id)->delete();

        $user->assignRole($request->input('roles'));
        return redirect()->route('admin.users.index');

    }

    /**
     * Remove the resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::find($id)->delete();
        return redirect()->route('admin.users.index');
    }
}
