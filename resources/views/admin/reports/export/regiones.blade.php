                            <table class="table table-bordered  table-hover  table-responsive " >
                                <thead style="background-color: rgb(255, 164, 38);">
                                    <tr>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">ID</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">REGION</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-I-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-II-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-III-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION D-IV-</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION C.T.</th>
                                        <th style="color: white; text-shadow: 1px 1px 2px black">DELEGACION TOTAL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($delegacionesPorRegion as $key => $region)
                                        <tr>
                                            <td>{{$key + 1}}</td>
                                            <td>{{$region->region}}&nbsp;-&nbsp;{{$region->sede}}</td>
                                            <td style="text-align: center">{{$region->DI_total}}</td>
                                            <td style="text-align: center">{{$region->DII_total}}</td>
                                            <td style="text-align: center">{{$region->DIII_total}}</td>
                                            <td style="text-align: center">{{$region->DIV_total}}</td>
                                            <td style="text-align: center">{{$region->CT_total}}</td>
                                            <td style="text-align: center">
                                                <a href="delegaciones?region={{$region->id}}">{{$region->Total_Delegaciones}}</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>