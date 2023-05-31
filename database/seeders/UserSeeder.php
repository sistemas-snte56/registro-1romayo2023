<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create(['name' => 'VICENTE JUAREZ ALARCON','email' => 'juarez.vic@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Administrador');
        User::create(['name' => 'MIROSLAVA HERNANDEZ DE LA MERCED','email' => 'meche@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Supervisor');
        User::create(['name' => 'BEATRIZ OLIVIA BARRADAS GONZÁLEZ','email'=> 'beatriz.bar.71@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Editor');
        User::create(['name' => 'ROBERTO CARLOS GARCÍA ALEJANDRE','email'=> 'alejandreroca@gmail.com','password' => Hash::make('321321'), 'id_delegacion' => '242'])->assignRole('Invitado');
    }
}
