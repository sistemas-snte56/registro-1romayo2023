@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Usuario de Administración</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <table class="table">
                                <thead>
                                    <th>NOMBRE</th>
                                    <th style="text-transform: uppercase" >{!! $user->delegaciones->nomenclatura !!}</th>
                                    <th>SEDE</th>
                                    <th>REGION</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{!! $user->name; !!}</td>
                                        <td>
                                            {!! $user->delegaciones->delegacion !!}
                                            &nbsp;{!! $user->delegaciones->nivel !!} 
                                        </td>
                                        <td>{!! $user->delegaciones->sede !!} </td>
                                        <td>
                                            {!! $user->delegaciones->regiones->region !!} —
                                            {!! $user->delegaciones->regiones->sede !!}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-body">

                            @if (Session::has('success'))
                                <div class="alert alert-success alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Listo !</strong> {{ session('success') }}
                                </div>
                            @endif


                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <th style="color: white; text-shadow: 1px 1px 2px black">NO</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">NOMBRE</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">NÚMERO PERSONAL</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">REGIÓN</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">ACCIONES</th>
                                </thead>
                                <tbody>
                                    @if ($usuarios->count() > 0)
                                        @foreach ($usuarios as $key => $usuario)
                                            <tr>
                                                <td> {{ $key + 1 }} </td>
                                                <td>{{ $usuario->nombre }} {{ $usuario->apaterno }} {{ $usuario->amaterno }} </td>
                                                <td>{{ $usuario->npersonal }} </td>
                                                <td>{{ $usuario->delegaciones->delegacion }} {{ $usuario->delegaciones->sede }} </td>
                                                <td>{{ $usuario->delegaciones->regiones->region }}
                                                    {{ $usuario->delegaciones->regiones->sede }} </td>
                                                <td>
                                                    <a href="{{ route('usuarios.show', $usuario->slug) }}"
                                                        class="btn btn-success">Ver</a>

                                                    @can('editar-usuario')
                                                        <a href="{{ route('usuarios.edit', $usuario->slug) }}"
                                                            class="btn btn-info">Editar</a>
                                                    @endcan


                                                    @can('borrar-usuario')
                                                        {!! Form::open([
                                                            'method' => 'DELETE',
                                                            'route' => ['usuarios.destroy', $usuario->slug],
                                                            'style' => 'display:inline',
                                                        ]) !!}
                                                        {!! Form::submit('Borrar', ['class' => 'btn btn-danger']) !!}
                                                        {!! Form::close() !!}
                                                    @endcan
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="6">
                                                No se encuentran resultados para "{{ $searchTerm }}"
                                            </td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                            <div class="pagination justify-content-end">
                                {!! $usuarios->links() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
