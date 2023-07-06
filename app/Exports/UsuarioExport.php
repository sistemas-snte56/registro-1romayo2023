<?php

namespace App\Exports;

use App\Models\Usuario;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class UsuarioExport implements FromView
{
    /**
    * @return \Illuminate\Support\View
    */
    public function view(): View
    {
        return view('admin.reports.export.usuarios',[
            'usuarios' => Usuario::select('usuario.id', 'usuario.nombre', 'usuario.apaterno', 'usuario.amaterno', 'usuario.curp', 'usuario.rfc', 'genero.genero', 'usuario.telefono', 'usuario.email', 'usuario.npersonal', 'delegaciones.nivel', 'delegaciones.delegacion', 'regiones.region', 'regiones.sede')
                ->join('genero', 'usuario.id_genero', '=', 'genero.id')
                ->join('delegaciones', 'usuario.id_delegacion', '=', 'delegaciones.id')
                ->join('regiones', 'delegaciones.id_region', '=', 'regiones.id')
                ->orderBy('regiones.region')
                ->orderBy('delegaciones.delegacion')
                ->get()
        ]);
    }
}
