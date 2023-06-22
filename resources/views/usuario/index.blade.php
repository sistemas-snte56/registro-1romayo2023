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
                            <caption style="padding: 6px 0 45px" >
                                <table class="table table-striped mt-2">
                                    <thead>
                                        <th>SECRETARIO/A GENERAL O REPRESENTANTE DE C.T.</th>
                                        <th>DELEGACIÓN O CENTRO DE TRABAJO</th>
                                        <th>REGIÓN</th>
                                    </thead>
                                    <tbody>
                                        <td>{{ $user = Auth::user()->name;}}</td>
                                        <td>{{ $user = Auth::user()->delegaciones->delegacion;}} &nbsp;&nbsp; {{ $user = Auth::user()->delegaciones->sede;}}</td>
                                        <td>{{ $user = Auth::user()->delegaciones->regiones->region;}} &nbsp;&nbsp; {{ $user = Auth::user()->delegaciones->regiones->sede;}} </td>
                                    </tbody>
                                </table>
                            </caption>

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
                            @can('crear-usuario-deleg')
                                <a href="{{ route('usuario.create') }}" class="btn btn-warning">Nuevo usuario</a>
                            @endcan
                            <caption>
                                <div class="pagination justify-content-end">
                                    {!! $usuarios->links() !!}
                                </div>
                            </caption>
                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <th style="color: white; text-shadow: 1px 1px 2px black">ID</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">NOMBRE</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">GENERO</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">NÚMERO PERSONAL</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">RFC</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">CORRE ELECTRÓNICO</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">NIVEL EDUCATIVO</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">ACCIONES</th>
                                </thead>
                                <tbody>
                                    @foreach ($usuarios as $key => $usuario)
                                        <tr>
                                            <td> {{ $key + 1 }} </td>
                                            <td>{{ $usuario->nombre }} {{ $usuario->apaterno }} {{ $usuario->amaterno }}</td>
                                            <td>{{ $usuario->genero->genero }}</td>
                                            <td>{{ $usuario->npersonal }}</td>
                                            <td>{{ $usuario->rfc }}</td>
                                            <td>{{ $usuario->email }}</td>
                                            <td>{{ $usuario->nivel->nivel }}</td>
                                            <td>
                                                @can('ver-usuario-deleg')
                                                    <a href="{{ route('usuario.show', $usuario->slug) }}" class="btn btn-success">Ver</a>
                                                @endcan

                                                @can('editar-usuario-deleg')
                                                    <a href="{{ route('usuario.edit', $usuario->slug) }}" class="btn btn-info">Editar</a>
                                                @endcan

                                                @can('borrar-usuario-deleg')
                                                    {!! Form::open([
                                                        'method' => 'DELETE',
                                                        'route' => ['usuario.destroy', $usuario->slug],
                                                        'style' => 'display:inline',
                                                    ]) !!}
                                                    {!! Form::submit('Borrar', ['class' => 'btn btn-danger']) !!}
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
