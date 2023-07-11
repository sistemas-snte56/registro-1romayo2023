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

                                <fieldset disabled>

                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="nombre">NOMBRE:</label>
                                            <input type="text" name="nombre" id="nombre" class="form-control" readonly disabled value="{{$usuario->nombre}} {{$usuario->apaterno}} {{$usuario->amaterno}}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">
                                        <div class="form-group">
                                            <label for="nivel">NIVEL EDUCATIVO:</label> 
                                            <input type="text" name="nivel" id="nivel" class="form-control" readonly disabled value="{{$usuario->nivel->nivel}}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">                                
                                        <div class="form-group">
                                            <label for="delegacion" style="text-transform: uppercase" >{{$usuario->delegaciones->nomenclatura}}:</label>
                                            <input type="text" name="delegacion" id="delegacion" class="form-control" readonly disabled value="{{$usuario->delegaciones->delegacion}} {{$usuario->delegaciones->nivel}} {{$usuario->delegaciones->sede}}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">                                
                                        <div class="form-group">
                                            <label for="region" style="text-transform: uppercase" >REGIÓN:</label>
                                            <input type="text" name="region" id="region" class="form-control" readonly disabled value="{{$usuario->delegaciones->regiones->region}} {{$usuario->delegaciones->regiones->sede}}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md12">                                
                                        <div class="form-group ">
                                            <label for="folio">FOLIO:</label>
                                            <input type="text" name="region" id="region" class="form-control" readonly disabled value="{{$usuario->folio}}">
                                        </div>
                                    </div>
                                </fieldset>

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




