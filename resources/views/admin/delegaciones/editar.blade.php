@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Actualización Delegación</h3>
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
                            {{-- {!! Form::model($role('method'=>'PATCH', 'route'=>['roles.update',$role->id] )); !!} --}}
                            {!! Form::model($delegacion, ['method' => 'PATCH' , 'route' => ['delegaciones.update', $delegacion->id] ]) !!}
                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="nomenclatura">SELECCIONA EL TIPO DE DELEGACIÓN O CENTRO DE TRABAJO</label>
                                            <select name="nomenclatura" id="nomenclatura" class="form-control">
                                                <option value="{{$delegacion->nomenclatura}}" >{{$delegacion->nomenclatura}}</option>
                                                <option value="DELEGACION" {{old('nomenclatura') == 'DELEGACION' ? 'selected' : ''}} >DELEGACION</option>
                                                <option value="CENTRO DE TRABAJO" {{old('nomenclatura') == 'CENTRO DE TRABAJO' ? 'selected' : ''}} >CENTRO DE TRABAJO</option>                                                
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="delegacion">DELEGACION</label>
                                            {!! Form::text('delegacion', null, ['class'=>'form-control','placeholder'=>'Ejemplo: D-II-000']) !!}
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
                                                <option value="{{$delegacion->id_region}}">{{$delegacion->regiones->region}} - {{$delegacion->regiones->sede}}</option>
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

