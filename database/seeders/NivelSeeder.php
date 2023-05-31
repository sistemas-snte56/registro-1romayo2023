<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class NivelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $niveles = [
            ['nivel'=>'PREESCOLAR'],
            ['nivel'=>'PRIMARIA'],
            ['nivel'=>'EDUCACIÓN ESPECIAL'],
            ['nivel'=>'SECUNDARIAS'],
            ['nivel'=>'EDUCACIÓN FÍSICA'],
            ['nivel'=>'NIVELES ESPECIALES'],
            ['nivel'=>'TELESECUNDARIAS'],
            ['nivel'=>'PAAE'],
            ['nivel'=>'BACHILLERATO'],
            ['nivel'=>'TELEBACHILLERATO'],
            ['nivel'=>'NORMALES'],
            ['nivel'=>'UPV '],
            ['nivel'=>'PENSIONADOS Y JUBILADOS']
        ];

        DB::table(table: 'niveles')->insert($niveles);
    }
}
