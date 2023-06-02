@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
                <h3 class="page__heading">Usuarios</h3> 
                
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

                            @can('crear-usuario')
                                <a href="{{route('usuarios.create')}}" class="btn btn-warning">Nuevo usuario</a>
                            @endcan

                            <caption>
                                <div class="pagination justify-content-end">
                                    {!! $usuarios->links() !!}
                                </div>         
                            </caption>

                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 167, 66);" >
                                    <th style="color: blanchedalmond;">ID</th>
                                    <th style="color: blanchedalmond;">NOMBRE</th>
                                    <th style="color: blanchedalmond;">NÚMERO PERSONAL</th>
                                    <th style="color: blanchedalmond;">DELEGACION</th>
                                    <th style="color: blanchedalmond;">REGIÓN</th>
                                    <th style="color: blanchedalmond;">ACCIONES</th>
                                </thead>
                                <tbody>
                                    @foreach ($usuarios as $key => $usuario)
                                        <tr>
                                            <td> {{$key+1}} </td>
                                            <td>{{$usuario->nombre}} {{$usuario->apaterno}}	{{$usuario->amaterno}}</td>
                                            <td>{{$usuario->npersonal}} 	</td>
                                            <td>{{$usuario->delegaciones->delegacion}} {{$usuario->delegaciones->sede}}	</td>
                                            <td>{{$usuario->delegaciones->regiones->region}} {{$usuario->delegaciones->regiones->sede}}	</td>
                                            <td>
                                                <a href="{{route('usuarios.show',$usuario->id)}}" class="btn btn-success">Ver</a>
                                                
                                                @can('editar-usuario')
                                                    <a href="{{route('usuarios.edit',$usuario->id)}}" class="btn btn-info">Editar</a>
                                                @endcan
                                                    
                                                
                                                @can('borrar-usuario')
                                                    {!! Form::open(['method'=>'DELETE', 'route'=>['usuarios.destroy',$usuario->id], 'style'=>'display:inline']) !!}
                                                        {!! Form::submit('Borrar', ['class'=>'btn btn-danger']) !!}
                                                    {!! Form::close() !!}
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <tfoot>
                                <div class="pagination justify-content-end">
                                    {!! $usuarios->links() !!}
                                </div>                            
                            </tfoot>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

