@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Regiones</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            @if (Session::has('success'))
                                <div class="alert alert-success alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Listo !</strong> {{ session('success') }}
                                </div>
                            @endif

                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 167, 66);" >
                                    <th style="display:none;">ID</th>
                                    <th style="color: blanchedalmond;">REGION</th>
                                    <th style="color: blanchedalmond;">SEDE</th>
                                </thead>
                                <tbody>
                                    @foreach ($regiones as $region)
                                        <tr>
                                            <td style="display: none;">{{$region->id}}</td>
                                            <td>{{$region->region}}</td>
                                            <td>{{$region->sede}}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="pagination justify-content-end">
                                {{-- {!! $regiones->links() !!} --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

