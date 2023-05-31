<?php

namespace App\Http\Controllers;

use App\Models\Rol;
use App\Http\Requests\StoreRolRequest;
use App\Http\Requests\UpdateRolRequest;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;




class RolController extends Controller
{
    
    function __construct()
    {
        $this->middleware('permission:ver-rol|crear-rol|editar-rol|borrar-rol', ['only'=>['index']]);
        $this->middleware('permission:crear-rol', ['only'=>['create','store']]);
        $this->middleware('permission:editar-rol', ['only'=>['edit','update']]);
        $this->middleware('permission:destroy-rol', ['only'=>['destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Role::paginate(15);
        return view('roles.index',['roles'=>$roles]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $permission = Permission::get();
        return view('roles.crear',['permission'=>$permission]);        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreRolRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRolRequest $request)
    {
        $request->validate([
            'name' => 'required',
            'permission' => 'required'
        ],[
            'name.required' => 'El nombre es requirido',
            'permission.required' => 'Tiene que seleccionar al menos un permiso.'
        ]);

        $role = new Role();
        $role->name = $request->input('name');
        $role->syncPermissions($request->input('permission'));
        $role->save();

        return redirect()->route('roles.index')->with('success','Rol registrado correctamente');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Rol  $rol
     * @return \Illuminate\Http\Response
     */
    public function edit(Rol $rol, $id)
    {

        $role = Role::find($id);
        $permission = Permission::get();
        $rolePermission = DB::table('role_has_permissions')->where('role_has_permissions.role_id',$id)
            ->pluck('role_has_permissions.permission_id','role_has_permissions.permission_id')
            ->all();

        return view('roles.editar',['role'=>$role, 'permission'=>$permission, 'rolePermission'=>$rolePermission]);
    

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateRolRequest  $request
     * @param  \App\Models\Rol  $rol
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateRolRequest $request, Rol $rol, $id)
    {
        $request->validate([
            'name' => 'required',
            'permission' => 'required'
        ],[
            'name.required' => 'El nombre es requirido',
            'permission.required' => 'El permiso es requirido'
        ]);

        $role = Role::find($id);
        $role->name = $request->input('name');
        $role->save();
       
        $role->syncPermissions($request->input('permission'));

        return redirect()->route('roles.index')->with('success','Rol actualizado correctamente');
    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Rol  $rol
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('roles')->where('id',$id)->delete();
        return redirect()->route('roles.index')->with('success','Se elimino correctamente el rol.');
    }
}
