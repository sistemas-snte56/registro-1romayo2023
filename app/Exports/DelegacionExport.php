<?php

namespace App\Exports;

use App\Models\Delegacion;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class DelegacionExport implements FromView
{
    /**
    * @return \Illuminate\Support\View
    */
    public function view(): View
    {
        return view('admin.reports.export.delegaciones',[
            'delegaciones' => Delegacion::get()
        ]);
    }
}
