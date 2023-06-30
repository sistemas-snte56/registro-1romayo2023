@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Estadisticas</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <table class="table table-hover table-responsive table-sm">
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <tr>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NO</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NOMBRE</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">CURP</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">RFC</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">GENERO</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">TELEFONO</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">EMAIL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NPERSONAL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NIVEL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($usuarios as $key => $usuario)
                                    <tr>
                                        <td>{{ $key + 1 }}</td>
                                        <td> {{ $usuario->nombre }}&nbsp;{{ $usuario->apaterno }}&nbsp;{{ $usuario->amaterno }}</td>
                                        <td>{{ $usuario->curp }}</td>
                                        <td>{{ $usuario->rfc }}</td>
                                        <td>{{ $usuario->genero }}</td>
                                        <td>{{ $usuario->telefono }}</td>
                                        <td>{{ $usuario->email }}</td>
                                        <td>{{ $usuario->npersonal }}</td>
                                        <td>{{ $usuario->nivel }}</td>
                                        <td>{{ $usuario->delegacion }}</td>
                                        <td>{{ $usuario->region }}&nbsp;{{ $usuario->sede }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer">
                            info
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection