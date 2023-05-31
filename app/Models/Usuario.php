<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    use HasFactory;
    protected $table='usuario';
    
    protected $fillable = [
        'nombre',
        'apaterno',
        'amaterno',
        'curp',
        'rfc',
        'id_genero',
        'telefono',
        'email',
        'npersonal',
        'id_genero',
        'id_nivel',
        'id_delegacion',
        'id_users',
    ];

    public function delegaciones() {
        return $this->belongsTo(Delegacion::class, 'id_delegacion','id');
    }
    
    public function genero() {
        return $this->belongsTo(Genero::class, 'id_genero','id');
    }
    
    public function nivel() {
        return $this->belongsTo(Nivel::class, 'id_nivel','id');
    }        
}
