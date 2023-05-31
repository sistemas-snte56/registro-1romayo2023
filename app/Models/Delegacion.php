<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Delegacion extends Model
{
    use HasFactory;

    protected $table = 'delegaciones';

    public function regiones()
    {
        return $this->belongsTo(Region::class,'id_region','id');
    }

    # Function para enlistar las delegaciones dependiendo de la región
    public static function delegaciones($id)
    {
        return Delegacion::orderBy('id','ASC')->where('id_region','=',$id)->get();
    }
}
