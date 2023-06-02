@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Editar Rol </h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @if ($errors->any())
                                <div class="alert alert-warning alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    @foreach ($errors->all() as $error)
                                        {{ $error }}<br/>
                                    @endforeach
                                </div>                                
                            @endif
                            {!! Form::model($role, ['method' => 'PATCH' , 'route' => ['roles.update', $role->id] ]) !!}                            
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="name">NOMBRE DEL ROL</label>
                                            {!! Form::text('name', null, array('class'=>'form-control')) !!}
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="">PERMISOS PARA ESTE ROL</label> <br>
                                            <ul class="list-group  list-group-vertical">
                                                @foreach ($permission as $value)
                                                    <li class="list-group-item">
                                                        <label>{{ Form::checkbox('permission[]', $value->id, in_array($value->id, $rolePermission) ? true : false, array('class' => 'name')) }}
                                                            {{ $value->name }}</label> <br>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Guardar</button>
                                        </div>
                                    </div>
                                </div>
                            {!! Form::close(); !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

