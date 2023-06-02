@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Roles</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            {{-- Cuando se Crea/Actualiza un rol --}}
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
                            {{-- Directivas de permiso --}}
                            @can('crear-rol')
                                <a href="{{route('roles.create')}}" class="btn btn-warning">Nuevo Rol</a>
                            @endcan

                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 167, 66);" >
                                    <th style="display:none;">ID</th>
                                    <th style="color: blanchedalmond;">ROL</th>
                                    <th style="color: blanchedalmond;">ACCIONES</th>
                                </thead>
                                <tbody>
                                    @foreach ($roles as $rol)
                                        <tr>
                                            <td style="display: none;">{{$rol->id}}</td>
                                            <td>{{$rol->name}}</td>
                                            <td>
                                                @can('editar-rol')
                                                    <a href="{{route('roles.edit',$rol->id)}}" class="btn btn-primary">Editar</a>
                                                @endcan

                                                @can('borrar-rol')
                                                    {!! Form::open(['method'=>'DELETE', 'route'=>['roles.destroy',$rol->id], 'style'=>'display:inline']) !!}
                                                        {!! Form::submit('Borrar', ['class'=>'btn btn-danger']) !!}
                                                    {!! Form::close() !!}
                                                @endcan                                                
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="pagination justify-content-end">
                                {!! $roles->links() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

