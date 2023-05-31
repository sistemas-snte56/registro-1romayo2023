<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RegionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $regiones = [

            ['region' => 'REGIÓN I', 'sede' => 'TANTOYUCA', 'coordinador' => 'PROF. HECTOR MIGUEL TORRES PÉREZ'],
            ['region' => 'REGIÓN II', 'sede' => 'TUXPAN', 'coordinador' => 'PROF. JOSÉ GUADALUPE MUÑOZ REYES'],
            ['region' => 'REGIÓN III', 'sede' => 'POZA RICA', 'coordinador' => 'PROF. JUAN MARTÍNEZ ACOSTA'],
            ['region' => 'REGIÓN IV', 'sede' => 'MARTÍNEZ DE LA TORRE', 'coordinador' => 'PROF. SERGIO MARTÍNEZ MORATO'],
            ['region' => 'REGIÓN V', 'sede' => 'XALAPA', 'coordinador' => 'PROFA. DORA CAROLINA LAGUNES DÍAZ'],
            ['region' => 'REGIÓN VI', 'sede' => 'VERACRUZ', 'coordinador' => 'PROF. LUIS EDUARDO CHÁVEZ ROJO'],
            ['region' => 'REGIÓN VII', 'sede' => 'CORDOBA', 'coordinador' => 'PROF. RAMIRO MONTESINO TRUJILLO'],
            ['region' => 'REGIÓN VIII', 'sede' => 'ORIZABA', 'coordinador' => 'PROF. PORFIRIO GUTIÉRREZ LOPÉZ'],
            ['region' => 'REGIÓN IX', 'sede' => 'COSAMALOAPAN', 'coordinador' => 'PROF. JOSÉ DE JESÚS SÁNCHEZ SERMAN'],
            ['region' => 'REGIÓN X', 'sede' => 'SAN ANDRES TUXTLA', 'coordinador' => 'PROF. FRANCISCO CILIAS SUSUNAGA'],
            ['region' => 'REGIÓN XI', 'sede' => 'MINATITLÁN', 'coordinador' => 'PROF. LUIS ARMANDO LÓPEZ ALVARADO'],

        ];

        DB::table(table: 'regiones')->insert($regiones);
    }
}
