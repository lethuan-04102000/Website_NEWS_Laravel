 <div class="col-md-3 ">
             <ul class="list-group"  >
                    <div class="panel-heading" style=" font-size: 34px;">
                         DANH MỤC   {{--<marquee style="background-color:   white;">
                                        
                                        <a class="btn btn-primary" href="tintuc/{{$tin1['id']}}/{{$tin1['TieuDeKhongDau']}}.html">
                                            <span class="glyphicon glyphicon-chevron-right"></span>
                                            {{$tin1['TieuDe']}}
                                        </a>



                                        <a href="tintuc/{{$tintuc['id']}}/{{$tintuc['TieuDeKhongDau']}}.html">
                                            <h4>
                                                <span class="glyphicon glyphicon-list-alt"></span>
                                                {{$tintuc['TieuDe']}}
                                            </h4>
                                        </a>
                                        </marquee></h2> --}}
                    </div>
                    @foreach($theloai as $tl)
                        @if(count($tl->loaitin)>0)
                            <li href="#" class="list-group-item menu1" style="font-family: bold" >
                            	{{$tl->Ten}}
                            </li>

                            <ul>
                                @foreach($tl->loaitin as $lt)
                            		<li class="list-group-item">
                            			<a href="loaitin/{{$lt->id}}/{{$lt->TenKhongDau}}.html">{{$lt->Ten}}</a>
                            		</li>
                                @endforeach
                            </ul>
                        @endif
                    @endforeach
            </ul>
</div>