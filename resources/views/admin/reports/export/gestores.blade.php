                            <table class="table table-hover table-responsive table-sm">
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <tr>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">ID</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">NOMBRE</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">EMAIL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION_NIVEL</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION_SEDE</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION_SEDE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($gestores as $key => $gestor)
                                    <tr>
                                        <td>{{ $key + 1}}</td>
                                        <td>{{ $gestor->name }}</td>
                                        <td>{{ $gestor->email }}</td>
                                        <td>{{ $gestor->delegacion }}</td>
                                        <td>{{ $gestor->nivel }}</td>
                                        <td>{{ $gestor->sede }}</td>
                                        <td>{{ $gestor->region }}</td>
                                        <td>{{ $gestor->sede_region }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>