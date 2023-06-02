@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Nueva Delegación</h3>
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

                            {!! Form::open(array('route'=>'delegaciones.store', 'method'=>'POST')); !!}
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="nomenclatura">SELECCIONA EL TIPO DE DELEGACIÓN O CENTRO DE TRABAJO</label>
                                            <select name="nomenclatura" id="nomenclatura" class="form-control">
                                                <option value="" enabled selected>Selecciona opción</option>
                                                <option value="delegacion" {{old('nomenclatura') == 'delegacion' ? 'selected' : ''}} >DELEGACION</option>
                                                <option value="centro de trabajo" {{old('nomenclatura') == 'centro de trabajo' ? 'selected' : ''}} >CENTRO DE TRABAJO</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="delegacion">DELEGACION / C.T.</label>
                                            {!! Form::text('delegacion', null, ['class'=>'form-control', 'id'=>'delegacion']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="nivel">NIVEL DELEGACIONAL</label>
                                            {!! Form::text('nivel', null, ['class'=>'form-control']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="sede">SEDE</label>
                                            {!! Form::text('sede', null, ['class'=>'form-control']) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            {!! Form::label('region','SELECCIONA REGIÓN') !!}
                                            <select name="region" id="region" class="form-control">
                                                <option value="" disabled selected>Selecciona Opción</option>
                                                @foreach ($regiones as $region)
                                                    <option value="{{$region->id}}" {{old('region') == $region->id ? 'selected' : ''}}  >{{$region->region}} - {{$region->sede}}</option>
                                                @endforeach
                                            </select>
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

@section('scripts')
<script src="{{ asset('assets/js/regiones.js') }}"></script>
@endsection
