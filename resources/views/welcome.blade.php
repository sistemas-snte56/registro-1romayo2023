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
                        <div class="float-right shadow-light" style="margin: 10px;">
                            <a href="{{ route('login') }}" class="font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">
                                Inicia sesión 
                            </a>
                        </div>
                        <div class="card-header"><h4>Buscar constancia</h4></div>
                        <div class="card-body">
                            <div class="m-b-md">
                                <form action="{{route('buscar.codigo')}}" method="GET">
                                    @csrf
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Ingresa un código de 4 dígitos"  type="text" name="codigo" id="codigo" maxlength="4" required>                                        
                                        @if(Session::has('error'))
                                            <div class="pt-3" style="color:red" >
                                                <strong>Error !</strong>  {{ Session::get('error') }}
                                            </div>
                                        @endif                                        
                                    </div>
                                    <div class="form-group">
                                        <button  class="btn btn-primary btn-lg btn-block"  type="submit">Buscar</button>
                                    </div>
                                    {{-- <div class="form-group">
                                        @if(Session::has('error'))
                                            <div class="alert alert-danger"> <strong>Error !</strong>  {{ Session::get('error') }}</div>
                                        @endif
                                    </div> --}}
                                </form>
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




