@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Delegaciones</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @if (Session::has('success'))
                                <div class="alert alert-success alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Listo !</strong> {{ session('success') }}
                                </div>
                            @endif
                            @if (Session::has('danger'))
                                <div class="alert alert-danger alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Listo !</strong> {{ session('danger') }}
                                </div>
                            @endif
                            @can('crear-delegacion')
                                <a href="{{route('delegaciones.create')}}" class="btn btn-warning">Nuevo usuario</a>
                            @endcan
                            <div class="pagination justify-content-end">
                                {!! $delegaciones->links() !!}
                            </div>
                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 167, 66);" >
                                    <th style="display:none;">ID</th>
                                    <th style="color: blanchedalmond;">DELEGACION</th>
                                    <th style="color: blanchedalmond;">SEDE</th>
                                    <th style="color: blanchedalmond;">REGION</th>
                                    @can('editar-delegacion')
                                        <th style="color: blanchedalmond;">EDITAR</th>
                                    @endcan
                                    @can('editar-borrar')
                                        <th style="color: blanchedalmond;">BORRAR</th>
                                    @endcan
                                </thead>
                                <tbody>
                                    @foreach ($delegaciones as $delegacion)
                                        <tr>
                                            <td style="display: none;">{{$delegacion->id}}</td>
                                            <td>{{$delegacion->delegacion}} - {{$delegacion->nivel}}</td>
                                            <td>{{$delegacion->sede}}</td>
                                            <td>{{$delegacion->regiones->region}} {{$delegacion->regiones->sede}} </td>
                                            @can('editar-delegacion')
                                                <td>
                                                    <a href="{{route('delegaciones.edit',$delegacion->id)}}" class="btn btn-info">Editar</a>
                                                </td>    
                                            @endcan

                                            @can('borrar-delegacion')
                                                <td>
                                                    {!! Form::open(['method'=>'DELETE', 'route'=>['delegaciones.destroy',$delegacion->id], 'style'=>'display:inline']) !!}
                                                        {!! Form::submit('Borrar', ['class'=>'btn btn-danger']) !!}
                                                    {!! Form::close() !!}
                                                </td>
                                            @endcan
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="pagination justify-content-end">
                                {!! $delegaciones->links() !!}
                            </div>
                            @can('crear-delegacion')
                                <a href="{{route('delegaciones.create')}}" class="btn btn-warning">Nuevo usuario</a>
                            @endcan                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
@endsection

