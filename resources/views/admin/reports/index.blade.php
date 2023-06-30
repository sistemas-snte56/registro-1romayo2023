@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Estadisticas</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col-xl-4 col-sm-6 col-12">
                                    <div class="card  shadow rounded mb-5" style="background-color:rgb(255, 164, 38); ">
                                        <div class="card-content text-white">
                                            <div class="card-title p-3">
                                                <h2><i class="fa fa-users  float-left m-0"></i> &nbsp; Gestores</h2>
                                            </div>
                                            <div class="card-body">
                                                <div class="media d-flex">
                                                    <div class="align-self-center">
                                                        {{-- <i class="icon-pencil primary font-large-2 float-left"></i> --}}
                                                        {{-- <i class="fa fa-users fa-4x float-left mb-4"></i> --}}
                                                    </div>
                                                    <div class="media-body text-right">
                                                        <h3>{{ $totalGestores }}</h3>
                                                        <span class="text-white">
                                                            <a href='{{ route('reporte.gestores') }}' class="font-weight-bold"
                                                                style='color: white; texto-trafonsform: uppercase;'>
                                                                Mostrar
                                                            </a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-4 col-sm-6 col-12">
                                    <div class="card  shadow rounded mb-5" style="background-color:rgb(255, 164, 38); ">
                                        <div class="card-content text-white">
                                            <div class="card-title p-3">
                                                <h2><i class="fa fa-users  float-left m-0"></i> &nbsp; Regiones</h2>
                                            </div>
                                            <div class="card-body">
                                                <div class="media d-flex">
                                                    <div class="align-self-center">
                                                        <span style="float: left">

                                                        </span>
                                                    </div>
                                                    <div class="media-body text-right">
                                                        <h3>{{ $totalRegiones }}</h3>
                                                        <span class="text-white">
                                                            <a href='{{ route('reporte.regiones') }}' class="font-weight-bold"
                                                                style='color: white; texto-trafonsform: uppercase;'>
                                                                Mostrar
                                                            </a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-4 col-sm-6 col-12">
                                    <div class="card  shadow rounded mb-5" style="background-color:rgb(255, 164, 38); ">
                                        <div class="card-content text-white">
                                            <div class="card-title p-3">
                                                <h2><i class="fa fa-users  float-left m-0"></i> &nbsp; Delegaciones</h2>
                                            </div>
                                            <div class="card-body">
                                                <div class="media d-flex">
                                                    <div class="align-self-center">
                                                        <span style="float: left">
                                                            <ul class="list-unstyled">
                                                                <li>Total de Delegaciones D-I:
                                                                    <strong>{{ $delegaciones->totalDelegDI }}</strong></li>
                                                                <li>Total de Delegaciones D-II:
                                                                    <strong>{{ $delegaciones->totalDelegDII }}</strong></li>
                                                                <li>Total de Delegaciones D-III:
                                                                    <strong>{{ $delegaciones->totalDelegDIII }}</strong>
                                                                </li>
                                                                <li>Total de Delegaciones D-IV:
                                                                    <strong>{{ $delegaciones->totalDelegDIV }}</strong></li>
                                                                <li>Total de Delegaciones C.T.:
                                                                    <strong>{{ $delegaciones->totalDelegCT }}</strong></li>
                                                            </ul>
                                                        </span>
                                                    </div>
                                                    <div class="media-body text-right">
                                                        <h3>{{ $delegaciones->total }}</h3>
                                                        <span class="text-white">
                                                            <a href='{{ route('reporte.delegaciones') }}' class="font-weight-bold"
                                                                style='color: white; texto-trafonsform: uppercase;'>
                                                                Mostrar
                                                            </a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-4 col-sm-6 col-12">
                                    <div class="card  shadow rounded mb-5" style="background-color:rgb(255, 164, 38); ">
                                        <div class="card-content text-white">
                                            <div class="card-title p-3">
                                                <h2><i class="fa fa-users  float-left m-0"></i> &nbsp; Usuarios</h2>
                                            </div>
                                            <div class="card-body">
                                                <div class="media d-flex">
                                                    <div class="align-self-center">
                                                        <span style="float: left">
    
                                                        </span>
                                                    </div>
                                                    <div class="media-body text-right">
                                                        <h3>{{ $totalUsuarios }}</h3>
                                                        <span class="text-white">
                                                            <a href='{{ route('reporte.usuarios') }}' class="font-weight-bold"
                                                                style='color: white; texto-trafonsform: uppercase;'>
                                                                Mostrar
                                                            </a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            





                        </div>
                        <div class="card-footer">
                            info
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script src="{{ asset('assets/js/modal.js') }}"></script>
@endsection
