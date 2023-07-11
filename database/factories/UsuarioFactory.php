<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Usuario;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario>
 */
class UsuarioFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    protected $model = Usuario::class;

    public function definition()
    {

        $nombre = strtoupper($this->faker->firstName);
        $apaterno = strtoupper($this->faker->lastName);
        $amaterno = strtoupper($this->faker->lastName);

        $folio = strtolower(Str::random(4) . '-' . Str::random(4) . '-' . $this->faker->randomLetter() . $this->faker->randomNumber(3) . '-' . Str::random(4));
        
        while(Usuario::where('folio', $folio)->exists()) { //Verifica si el folio ya existe en la base de datos
            $folio = strtolower(Str::random(4) . '-' . Str::random(4) . '-' . $this->faker->randomLetter() . $this->faker->randomNumber(3) . '-' . Str::random(4)); //Genera un nuevo folio si el anterior ya existe
        }        

        $codigo = substr($folio, -4);

        return [
            'nombre' => $nombre,
            'apaterno' => $apaterno,
            'amaterno' => $amaterno,
            'curp' => $this->faker->regexify('[A-Z]{4}[0-9]{6}[H|M][A-Z]{5}[0-9]{2}'),
            'rfc' => $this->faker->regexify('[A-Z]{4}[0-9]{6}[A-Z0-9]{3}'),
            'id_genero' => $this->faker->numberBetween($min = 1, $max = 2),
            'telefono' => $this->faker->numberBetween(1000000000, 9999999999),
            'email' => $this->faker->unique()->safeEmail,
            'npersonal' => $this->faker->unique()->numberBetween($min = 11111, $max = 66666),
            'id_nivel' => $this->faker->numberBetween($min = 1, $max = 13),
            'id_delegacion' => $this->faker->numberBetween($min = 1, $max = 245),
            'id_users' => $this->faker->numberBetween($min = 1, $max = 225),
            'slug' => Str::slug($nombre.'-'.$apaterno.'-'.$amaterno),
            'folio' => $folio,
            'codigo' => $codigo,
        ];
    }
}
