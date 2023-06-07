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
                            <caption style="padding: 6px 0 8px" >
                                <div  style="font-weight: 900">SECRETARIO /A GENEREAL O REPRESENTANTE DE C.T.</div>
                                <div  style="font-weight: 600; padding: 4px 0 45px">{{ $user = Auth::user()->name;}}</div>
                            </caption>
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

                            {!! Form::open([ 'route'=>'usuario.store','method'=>'POST']) !!}
                                {{-- @csrf --}}
                                <div class="row">
                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="nombre">NOMBRE</label>
                                            {{ Form::text('nombre', null, ['class'=>'form-control','placeholder'=>'Ingresa Nombre(s)'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="a_paterno">APELLIDO PATERNO</label>
                                            {{ Form::text('a_paterno', null, ['class'=>'form-control','placeholder'=>'Ingresa Primer apellido'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="a_materno">APELLIDO MATERNO</label>
                                            {{ Form::text('a_materno', null,  ['class'=>'form-control','placeholder'=>'Ingresa Segundo apellido'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md6">
                                        <div class="form-group">
                                            <label for="curp">CURP</label>
                                            {{ Form::text('curp', null, ['class'=>'form-control','placeholder'=>'Coloca tu CURP'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="rfc">RFC</label>
                                            {{ Form::text('rfc', null, ['class'=>'form-control','placeholder'=>'Coloca tu RFC'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('genero','GÉNERO') !!}
                                            {!! Form::select('genero', $genero, null, ['class' => 'form-control']) !!}

                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="telefono">TELÉFONO</label>
                                            {{ Form::text('telefono', null, ['class'=>'form-control','placeholder'=>'Número de 10 dígitos.'])}}
                                        </div>
                                    </div> 
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="email">CORREO ELECTRÓNICO</label>
                                            {{ Form::text('email', null, ['class'=>'form-control','placeholder'=>'¿Cúal es tu correo electrónico?'])}}
                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            <label for="npersonal">NÚMERO DE PERSONAL</label>
                                            {{ Form::text('npersonal', null, ['class'=>'form-control','placeholder'=>'Proporciona tu Número de personal'])}}
                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md3">
                                        <div class="form-group">
                                            {!! Form::label('nivel','NIVEL EDUCATIVO') !!}
                                            {!! Form::select('nivel', $niveles, null, ['class' => 'form-control']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-8 col-sm-8 col-md8">
                                        <div class="form-group">
                                            <label for="delegacion">DELEGACIÓN</label>
                                            {!! Form::text('delegacion', $delegacionUser , ['class'=>'form-control', 'readonly' => 'true']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md4">
                                        <div class="form-group">
                                            <label for="region">REGIÓN</label>
                                            {!! Form::text('region', $regionUser , ['class'=>'form-control', 'readonly' => 'true']) !!}
                                        </div>
                                    </div>

                                    @can('crear-usuario-deleg')
                                        <div class="col-xs-12 col-sm-12 col-md12">
                                            <div class="form-group">
                                                {!! Form::button('Guardar',['class'=>'btn btn-primary','type'=>'submit']) !!}
                                            </div>
                                        </div>
                                    @endcan
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

@section('scripts')
<script src="{{ asset('assets/js/regiones.js') }}"></script>
@endsection

