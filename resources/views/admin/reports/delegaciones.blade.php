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
                        <div class="card-header">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md12">
                                    <div class="form-group">
                                        <a href="{{route('reporte.index')}}" class="btn btn-success">Regresar</a>
                                        <a href="{{route('reporte.delegaciones.export')}}" class="btn btn-success">export</a>                                        
                                    </div>
                                </div>
                            </div>
                        </div>




                        <div class="card-body">
                            <table class="table">
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <tr>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NO</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NIVEL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">SEDE</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION</th>
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
