<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Delegacion extends Model
{
    use HasFactory;

    protected $table = 'delegaciones';

    protected $fillable = [
        'nomenclatura',
        'delegacion',
        'nivel',
        'sede',
        'id_region',
        'slug'
    ];    

    public function regiones()
    {
        return $this->belongsTo(Region::class,'id_region','id');
    }

    # Function para enlistar las delegaciones dependiendo de la región
    public static function delegaciones($id)
    {
        return Delegacion::orderBy('id','ASC')->where('id_region','=',$id)->get();
    }

    // public static function boot()
    // {
    //     parent::boot();

    //     static::creating(function ($model) {
    //         $model->slug = Str::slug($model->name, '-');
    //     });
    // }    
}
