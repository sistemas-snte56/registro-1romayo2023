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


{{-- 

                            @can('crear-usuario')
                                <a href="{{ route('usuarios.create') }}" class="btn btn-warning" style="float: right; margin-right:0px; margin-left:10px">Nuevo usuario</a>
                            @endcan --}}




                            @can('crear-delegacion')
                                <a href="{{ route('usuarios.create') }}" class="btn btn-warning" style="float: left" >Nuevo usuario</a>
                            @endcan

                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <form action="{{route('usuarios.index')}}" method="get">
                                        <a href="{{route('usuarios.index')}}" class="btn btn-primary mb-2" style="float: right; margin-right:0px; margin-top:3px">Limpiar</a> 
                                        <input type="search" name="search" wire:model="searchTerm" class="form-control w-25" placeholder="Buscar" style="float: right; margin-right:18px"> 
                                    </form>
                                </div>
                            </div>



                            <caption>
                                
                                <div class="pagination justify-content-end">

                                    {!! $usuarios->links() !!}
                                </div>
                            </caption>

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
                                    @if(count($usuarios) > 0)
                                        @foreach ($usuarios as $usuario)
                                            <tr>
                                                {{-- //TODO Colocando un listado progresivo por páginas --}}
                                                <td>{{ $loop->index + 1 + ($usuarios->perPage() * ($usuarios->currentPage() - 1)) }}</td>
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
                                                <span style="text-transform: uppercase">
                                                    No se encuentran resultados para "<strong>{{ $searchTerm }}</strong>".
                                                </span>
                                            </td>
                                        </tr>
                                    @endif
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
