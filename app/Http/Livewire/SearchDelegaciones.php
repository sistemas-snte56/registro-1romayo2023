<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Delegacion;

class SearchDelegaciones extends Component
{
    public $searchTerm = "";

    // public function search()
    // {
    //     $delegaciones = Delegacion::where('delegacion', 'LIKE', '%' . $this->searchTerm .'%')
    //                         ->orWhere('nivel', 'LIKE', '%' . $this->searchTerm .'%')
    //                         ->orWhere('sede', 'LIKE', '%' . $this->searchTerm .'%')
    //                         ->paginate(40);
    //     //$regiones = Region::all();   
    //     return view('livewire.search-delegaciones', ['delegaciones' => $delegaciones]);     
    // }

    public function render()
    {
        $delegaciones = Delegacion::where('delegacion', 'LIKE', '%' . $this->searchTerm .'%')
                            ->orWhere('nivel', 'LIKE', '%' . $this->searchTerm .'%')
                            ->orWhere('sede', 'LIKE', '%' . $this->searchTerm .'%')
                            ->paginate(40);        
        return view('livewire.search-delegaciones', compact('delegaciones'));
    }
}



