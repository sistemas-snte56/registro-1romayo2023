@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Crear Rol </h3>
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
                            {!! Form::open(array('route'=>'roles.store', 'method'=>'POST')); !!}
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            {!! Form::label('name','NOMBRE DEL ROL') !!}
                                            {!! Form::text('name',null,array('class'=>'form-control')) !!}
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            {!! Form::label('permission','SELECCIONA LOS PERMISOS PARA ESTE ROL') !!} <br>
                                            <ul class="list-inline">
                                                @foreach ($permission as $value)
                                                    <li>{{ Form::checkbox('permission[]',$value->id,false,array('class'=>'name'))}} {{$value->name}} </li>
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

