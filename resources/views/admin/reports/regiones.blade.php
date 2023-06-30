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
                            <table class="table table-bordered  table-hover  table-responsive " >
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <tr>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">ID</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION</th>

                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-I-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-II-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-III-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-IV-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION C.T.</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION TOTAL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($delegacionesPorRegion as $key => $region)
                                        <tr>
                                            <td>{{$key + 1}}</td>
                                            <td>{{$region->region}}&nbsp;-&nbsp;{{$region->sede}}</td>
                                            <td style="text-align: center">{{$region->DI_total}}</td>
                                            <td style="text-align: center">{{$region->DII_total}}</td>
                                            <td style="text-align: center">{{$region->DIII_total}}</td>
                                            <td style="text-align: center">{{$region->DIV_total}}</td>
                                            <td style="text-align: center">{{$region->CT_total}}</td>
                                            <td style="text-align: center">
                                                <a href="delegaciones?region={{$region->id}}">{{$region->Total_Delegaciones}}</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    <tr>
                                        <td colspan="7" style="text-align: right" ><strong>TOTAL DE DELEGACIONES:</strong>&nbsp;</td>
                                        <td style="text-align: center"  class="table-active"><strong>{{$delegaciones}}</strong></td>
                                    </tr>
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