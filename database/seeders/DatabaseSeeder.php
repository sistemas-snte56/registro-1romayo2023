<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(TablaPermisosSeeder::class);
        $this->call(RoleSeeder::class);
        $this->call(RegionSeeder::class);
        $this->call(DelegacionSeeder::class);
        $this->call(NivelSeeder::class);
        $this->call(GeneroSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(UsuarioSeeder::class);
    }
}
