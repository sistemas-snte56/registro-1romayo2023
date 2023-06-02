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
                        <div class="card-body">

                            @if (Session::has('success'))
                                <div class="alert alert-success alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Listo !</strong> {{ session('success') }}
                                </div>
                            @endif
                            @can('crear-user')
                                <a href="{{route('users.create')}}" class="btn btn-warning">Nuevo usuario</a>
                            @endcan

                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 167, 66);" >
                                    <th style="display:none;">ID</th>
                                    <th style="color: blanchedalmond;">NOMBRE</th>
                                    <th style="color: blanchedalmond;">EMAIL</th>
                                    <th style="color: blanchedalmond;">ROL</th>
                                    <th style="color: blanchedalmond;">ACCIONES</th>
                                </thead>
                                <tbody>
                                    @foreach ($users as $user)
                                        <tr>
                                            <td style="display: none;">{{$user->id}}</td>
                                            <td>{{$user->name}}</td>
                                            <td>{{$user->email}}</td>
                                            <td>
                                                @if (!empty($user->getRoleNames()))
                                                    @foreach ($user->getRoleNames() as $rolName)
                                                        <h5>
                                                            <span class="badge badge-dark">{{$rolName}}</span>
                                                        </h5>
                                                    @endforeach
                                                @endif
                                            </td>
                                            <td>
                                                @can('editar-user')
                                                    <a href="{{route('users.edit',$user->id)}}" class="btn btn-info">Editar</a>
                                                @endcan

                                                @can('borrar-user')
                                                    {!! Form::open(['method'=>'DELETE', 'route'=>['users.destroy',$user->id], 'style'=>'display:inline']) !!}
                                                        {!! Form::submit('Borrar', ['class'=>'btn btn-danger']) !!}
                                                    {!! Form::close() !!}
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="pagination justify-content-end">
                                {!! $users->links() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
