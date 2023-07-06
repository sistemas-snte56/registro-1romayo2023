<?php

namespace App\Exports;

use App\Models\Region;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromView;

class RegionExport implements FromView
{
    /**
    * @return \Illuminate\Support\View
    */
    public function view(): View 
    {
        return view('admin.reports.export.regiones', [
            'delegacionesPorRegion' => DB::table('delegaciones')
                        ->join('regiones', 'regiones.id', '=', 'delegaciones.id_region')
                        ->selectRaw('regiones.id, regiones.region, regiones.sede,
                                    COUNT(*) Total_Delegaciones,
                                    SUM(CASE WHEN delegaciones.delegacion LIKE "%D-I-%" THEN 1 ELSE 0 END) AS DI_total,
                                    SUM(CASE WHEN delegaciones.delegacion LIKE "%D-II-%" THEN 1 ELSE 0 END) AS DII_total,
                                    SUM(CASE WHEN delegaciones.delegacion LIKE "%D-III-%" THEN 1 ELSE 0 END) AS DIII_total,
                                    SUM(CASE WHEN delegaciones.delegacion LIKE "%D-IV-%" THEN 1 ELSE 0 END) AS DIV_total,
                                    SUM(CASE WHEN delegaciones.delegacion LIKE "%C.T.%" THEN 1 ELSE 0 END) AS CT_total')
                        ->groupBy('regiones.id')
                        ->get()
        ]);
    }
}

