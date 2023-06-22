@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Alta de Usuario </h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            {{-- Control de errores --}}
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

                            {{-- {!! Form::open(array('route'=>'usuarios.store', 'method'=>'POST')); !!} --}}
                            <form action="{{route('usuario.edit',$usuario->id)}}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="nombre">NOMBRE</label>
                                            {{ Form::text('nombre', $usuario->nombre, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="a_paterno">APELLIDO PATERNO</label>
                                            {{ Form::text('a_paterno', $usuario->apaterno, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="a_materno">APELLIDO MATERNO</label>
                                            {{ Form::text('a_materno', $usuario->amaterno, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md6">
                                        <div class="form-group">
                                            <label for="curp">CURP</label>
                                            {{ Form::text('curp', $usuario->curp, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="rfc">RFC</label>
                                            {{ Form::text('rfc', $usuario->rfc, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('genero','GÉNERO') !!}
                                            {!! Form::text('genero', $usuario->genero->genero,  ['class' => 'form-control','readonly'=>'readonly']) !!}
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md6">
                                        <div class="form-group">
                                            <label for="telefono">TELÉFONO</label>
                                            {{ Form::text('telefono', $usuario->telefono, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div> 
                                    <div class="col-xs-6 col-sm-6 col-md6">
                                        <div class="form-group">
                                            <label for="email">CORREO ELECTRÓNICO</label>
                                            {{ Form::text('email', $usuario->email, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="npersonal">NÚMERO DE PERSONAL</label>
                                            {{ Form::text('npersonal', $usuario->npersonal, ['class'=>'form-control','readonly'=>'readonly'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('nivel','NIVEL EDUCATIVO') !!}
                                            {!! Form::text('nivel', $usuario->nivel->nivel,  ['class' => 'form-control','readonly'=>'readonly']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('region','REGION') !!}
                                            {!! Form::text('regio', $usuario->delegaciones->regiones->region,  ['class' => 'form-control','readonly'=>'readonly']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('delegacion','DELEGACION') !!}
                                            {{-- {!! Form::text('delegacion', $usuario->delegaciones->delegacion, $usuario->delegaciones->sede,  ['class' => 'form-control','readonly'=>'readonly']) !!} --}}
                                            <input type="text" name="delegacion" id="" class="form-control" value="{{$usuario->delegaciones->delegacion}} {{$usuario->delegaciones->sede}}" readonly="readonlye">
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <a href="{{route('usuario.index')}}" class="btn btn-success">Regresar</a>
                                            @can('editar-usuario-deleg')                                                
                                            <a href="{{route('usuario.edit',$usuario->slug)}}" class="btn btn-info">Editar</a>
                                            @endcan
                                        </div>
                                    </div>
                                </div>
                            </form>
                            {{-- {!! Form::close(); !!} --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

