<?php

namespace App\Exports;

use App\Models\User;
// use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

// class UsersExport implements FromCollection
class UsersExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */

    // Para exportar la coleccion completa 
    /*public function collection()
    {
        // return User::all();

        return User::select(
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

        // return view('admin.reports.gestores',compact('gestores'));        
    }*/

    // Para Exportar la vista
    public function view(): view
    {
        return view( 'admin.reports.export.gestores', [
            'gestores' => User::select(
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
        ->get()
        ] );
    }
}
