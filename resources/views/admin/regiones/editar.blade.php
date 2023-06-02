@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Editar usuario de Usuario </h3>
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
                            {!! Form::model($usuario, ['method' => 'PATCH' , 'route' => ['usuarios.update', $usuario->id] ]) !!}

                                <div class="row">

                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="nombre">NOMBRE</label>
                                            {{ Form::text('nombre', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div>                                    

                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="apaterno">APELLIDO PATERNO</label>
                                            {{ Form::text('apaterno', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="amaterno">APELLIDO MATERNO</label>
                                            {{ Form::text('amaterno', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md6">
                                        <div class="form-group">
                                            <label for="curp">CURP</label>
                                            {{ Form::text('curp', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="rfc">RFC</label>
                                            {{ Form::text('rfc', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('genero','GÉNERO') !!}
                                            {!! Form::select('genero', $genero->pluck('genero','id'), $usuario->id_genero,  ['class' => 'form-control']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md6">
                                        <div class="form-group">
                                            <label for="telefono">TELÉFONO</label>
                                            {{ Form::text('telefono', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div> 

                                    <div class="col-xs-6 col-sm-6 col-md6">
                                        <div class="form-group">
                                            <label for="email">CORREO ELECTRÓNICO</label>
                                            {{ Form::text('email', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="npersonal">NÚMERO DE PERSONAL</label>
                                            {{ Form::text('npersonal', null, ['class'=>'form-control'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('nivel','NIVEL EDUCATIVO') !!}
                                            {!! Form::select('nivel', $nivel->pluck('nivel','id'), $usuario->id_genero, ['class' => 'form-control']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('region','REGION') !!}
                                            {!! Form::select('regio', $region->pluck('region','id')  , $usuario->delegaciones->id_region,  ['class' => 'form-control','id'=>'region']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('delegacion','DELEGACION') !!}
                                            {!! Form::select('delegacion', $delegacion->pluck('delegacion','id'), $usuario->id_delegacion, ['class' => 'form-control','id'=>'delegacion']) !!}
                                        </div>
                                    </div>                                    

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <a href="{{route('usuarios.show',$usuario->id)}}" class="btn btn-success">Regresar</a>
                                            {!! Form::button('Actualizar', ['class' => 'btn btn-primary', 'type' => 'submit']) !!}
                                        </div>
                                    </div>
                                </div>
                            {!! Form::close(); !!}
                            {{-- {!! Form::close(); !!} --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

