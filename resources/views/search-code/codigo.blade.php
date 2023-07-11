<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Admin Login</title>

    <!-- General CSS Files -->
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">

    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('web/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('web/css/components.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/iziToast.min.css') }}">
    <link href="{{ asset('assets/css/sweetalert.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/css/select2.min.css') }}" rel="stylesheet" type="text/css"/>
</head>

<body>
    <section class="section">
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="login-brand ">
                        <img src="{{ asset('img/logo.png') }}" alt="logo" width="100"
                        class="shadow-light">
                    </div>
                    <div class="card card-primary">
                        <div class="card-body">
                            <div class="m-b-md">
                                <h5>Enhorabuena:</h5>
                                <div class="col-xs-12 col-sm-12 col-md12">
                                    <div class="form-group">
                                        <label for="nombre">NOMBRE:</label>
                                        <p>{{$usuario->nombre}} {{$usuario->apaterno}} {{$usuario->amaterno}}</p>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md12">                                
                                    <div class="form-group">
                                        <label for="nombre" style="text-transform: uppercase" >{{$usuario->delegaciones->nomenclatura}}:</label>
                                        <p> {{$usuario->delegaciones->delegacion}} {{$usuario->delegaciones->nivel}} {{$usuario->delegaciones->sede}} <br>
                                            {{$usuario->delegaciones->regiones->region}} {{$usuario->delegaciones->regiones->sede}}
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md12">                                
                                    <div class="form-group ">
                                        <label for="nombre">FOLIO:</label>
                                        {{$usuario->folio}}                                         
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md12">
                                    <div class="form-group">
                                        <a href="/" class="btn btn-success">Regresar</a>
                                        <a href="#" class="btn btn-info">Descargar constancia</a>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


<!-- General JS Scripts -->
<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
<script src="{{ asset('assets/js/popper.min.js') }}"></script>
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/js/jquery.nicescroll.js') }}"></script>

<!-- JS Libraies -->

<!-- Template JS File -->
<script src="{{ asset('web/js/stisla.js') }}"></script>
<script src="{{ asset('web/js/scripts.js') }}"></script>
<!-- Page Specific JS File -->
</body>
</html>




