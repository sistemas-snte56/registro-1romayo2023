<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <table class="table">
        <thead style="background-color: rgb(255, 164, 38);">
            <tr>
                <th style="color: white; text-shadow: 1px 1px 2px black">NO</th>
                <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION</th>
                <th style="color: white; text-shadow: 1px 1px 2px black">NIVEL</th>
                <th style="color: white; text-shadow: 1px 1px 2px black">SEDE</th>
                <th style="color: white; text-shadow: 1px 1px 2px black">REGIÓN</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($delegaciones as $key => $delegacion)
                <tr>
                    <td> {{$key + 1}} </td>
                    <td> {{ $delegacion->delegacion }} </td>
                    <td> {{ $delegacion->nivel }} </td>
                    <td> {{ $delegacion->sede }} </td>
                    <td> {{ $delegacion->regiones->region }} &nbsp; {{$delegacion->regiones->sede}} </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>                            
                            