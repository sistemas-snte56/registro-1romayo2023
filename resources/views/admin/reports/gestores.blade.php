@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Total de Gestores Administrativos</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md12">
                                    <div class="form-group">
                                        <a href="{{route('reporte.index')}}" class="btn btn-success">Regresar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <table class="table table-hover table-responsive table-sm">
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <tr>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">ID</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NOMBRE</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">EMAIL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION_NIVEL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION_SEDE</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION_SEDE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($gestores as $key => $gestor)
                                    <tr>
                                        <td>{{ $key + 1}}</td>
                                        <td>{{ $gestor->name }}</td>
                                        <td>{{ $gestor->email }}</td>
                                        <td>{{ $gestor->delegacion }}</td>
                                        <td>{{ $gestor->nivel }}</td>
                                        <td>{{ $gestor->sede }}</td>
                                        <td>{{ $gestor->region }}</td>
                                        <td>{{ $gestor->sede_region }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md12">
                                    <div class="form-group">
                                        <a href="{{route('reporte.index')}}" class="btn btn-success">Regresar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection