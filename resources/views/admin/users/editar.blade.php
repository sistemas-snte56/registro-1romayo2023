@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Actualización de Usuario de Administración</h3>
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
                            {!! Form::model($user, ['method' => 'PATCH' , 'route' => ['users.update', $user->slug] ]) !!}
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="name">NOMBRE</label>
                                            {!! Form::text('name', null, array('class' => 'form-control')) !!}
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="email">CORREO ELECTRÓNICO</label>
                                            {!! Form::text('email', null, array('class' => 'form-control')) !!}
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            {!! Form::label('region','REGION') !!}
                                            <select name="region" id="region" class="form-control">
                                                @foreach ($region as $item)
                                                    <option value="{{$item->id}}" {{  $item->id == $user->delegaciones->id_region ? 'selected' : ''  }} > {{$item->region}} {{$item->sede}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            {!! Form::label('delegacion','DELEGACION') !!}
                                            <select name="delegacion" id="delegacion" class="form-control">
                                                @foreach ($delegacion as $deleg)
                                                    <option value="{{$deleg->id}}" {{$deleg->id == $user->id_delegacion ? 'selected' :'' }} >
                                                        {{ $deleg->delegacion }} &nbsp;
                                                        {{ $deleg->nivel }},&nbsp; 
                                                        {{ $deleg->sede }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div> 
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="password">CONTRASEÑA</label>
                                            {!! Form::password('password', array('class' => 'form-control')) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="password">CONFIRMAR CONTRASEÑA</label>
                                            {!! Form::password('confirm-password', array('class' => 'form-control')) !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="roles">ROLES</label>
                                            {!! Form::select('roles[]', $roles, $userRoles, array('class' => 'form-control')) !!}
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