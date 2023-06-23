@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">&nbsp;</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4>Bienvenido/a {{ Auth::user()->name; }}</h4>
                            @php
                                use App\Models\Usuario;
                                $count_usuarios = Usuario::where('id_users',Auth::user()->id)->count();
                            @endphp

                            
                            @if (Auth::user()->getRoleNames()->first() === "Administrador")
                                <h3 class="text-center">Contenido panel Administrador</h3>
                            @elseif(Auth::user()->getRoleNames()->first() === "Supervisor")
                                <h3 class="text-center">Contenido panel Supervisor</h3>
                            @elseif(Auth::user()->getRoleNames()->first() === "Editor")

                                <div class="row">
                                    <div class="col-md-4 col-xl-4">
                                        <div class="card" style="background-color: #ec660c;">
                                            <div class="card-body">
                                                <h5 class="card-title text-white"><i class="fa fa-users fa-2x"></i> Usuarios registrados</h5>
                                                <h6 class="float-right">
                                                    <p class="card-text text-white">TOTAL: {{$count_usuarios}} </p>
                                                    <a href="{{route('usuario.index')}}" class="text-white" style="text-align: right" >Ver más</a>
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

