                        <div class="card-body">
                            @if (Session::has('success'))
                                <div class="alert alert-success alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Listo !</strong> {{ session('success') }}
                                </div>
                            @endif
                            @if (Session::has('danger'))
                                <div class="alert alert-danger alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Listo !</strong> {{ session('danger') }}
                                </div>
                            @endif

                            @can('crear-delegacion')
                                <a href="{{ route('delegaciones.create') }}" class="btn btn-warning" style="float: left" >Nueva Delegación</a>
                            @endcan

                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <input type="search" wire:model="searchTerm" class="form-control w-25" placeholder="Buscar" style="float: right">
                                </div>
                            </div>


                            <div class="pagination justify-content-end">
                                {!! $delegaciones->links() !!}
                            </div>
                            <table class="table table-striped mt-2">
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <th style="display:none;">ID</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">SEDE</th>
                                    <th style="color: white; text-shadow: 1px 1px 2px black">REGION</th>
                                    @can('editar-delegacion')
                                        <th style="color: white; text-shadow: 1px 1px 2px black">EDITAR</th>
                                    @endcan
                                    @can('editar-borrar')
                                        <th style="color: white; text-shadow: 1px 1px 2px black">BORRAR</th>
                                    @endcan
                                </thead>
                                <tbody>
                                    @if ($delegaciones->count() > 0)
                                        @foreach ($delegaciones as $delegacion)
                                            <tr>
                                                <td style="display: none;">{{ $delegacion->id }}</td>
                                                <td>{{ $delegacion->delegacion }} - {{ $delegacion->nivel }}</td>
                                                <td>{{ $delegacion->sede }}</td>
                                                <td>{{ $delegacion->regiones->region }} {{ $delegacion->regiones->sede }} </td>
                                                @can('editar-delegacion')
                                                    <td>
                                                        <a href="{{ route('delegaciones.edit', $delegacion->slug) }}"
                                                            class="btn btn-info">Editar</a>
                                                    </td>
                                                @endcan

                                                @can('borrar-delegacion')
                                                    <td>
                                                        {!! Form::open([
                                                            'method' => 'DELETE',
                                                            'route' => ['delegaciones.destroy', $delegacion->slug],
                                                            'style' => 'display:inline',
                                                        ]) !!}
                                                        {!! Form::submit('Borrar', ['class' => 'btn btn-danger']) !!}
                                                        {!! Form::close() !!}
                                                    </td>
                                                @endcan
                                            </tr>
                                        @endforeach                                        
                                    @else

                                        <tr>
                                            <td colspan="5">
                                                No se encuentran resultados para "{{ $searchTerm }}"
                                            </td>
                                        </tr>


                                    @endif

                                </tbody>
                            </table>
                            <div class="pagination justify-content-end">
                                {!! $delegaciones->links() !!}
                            </div>
                            @can('crear-delegacion')
                                <a href="{{ route('delegaciones.create') }}" class="btn btn-warning">Nueva Delegación</a>
                            @endcan
                        </div>
