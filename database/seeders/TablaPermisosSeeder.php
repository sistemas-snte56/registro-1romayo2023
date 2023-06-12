<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

// Spatie
use Spatie\Permission\Models\Permission;

class TablaPermisosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permisos = [
            // Tabla roles 
            'ver-rol',
            'crear-rol',
            'editar-rol',
            'borrar-rol',

            // Tabla users 
            'ver-user',
            'crear-user',
            'editar-user',
            'borrar-user',

            // Tabla regiones 
            'ver-region',
            'crear-region',
            'editar-region',
            'borrar-region',

            // Tabla delegaciones 
            'ver-delegacion',
            'crear-delegacion',
            'editar-delegacion',
            'borrar-delegacion',

            // Tabla genero 
            'ver-genero',
            'crear-genero',
            'editar-genero',
            'borrar-genero',

            // Tabla niveles 
            'ver-nivel',
            'crear-nivel',
            'editar-nivel',
            'borrar-nivel',

            // Tabla usuarios 
            'ver-usuario',
            'crear-usuario',
            'editar-usuario',
            'borrar-usuario',

            // Tabla usuarios 
            'ver-usuario-deleg',
            'crear-usuario-deleg',
            'editar-usuario-deleg',
            'borrar-usuario-deleg',
        ];

        foreach ($permisos as $permiso) {
            Permission::create(['name'=>$permiso]);
        }
    }
}
