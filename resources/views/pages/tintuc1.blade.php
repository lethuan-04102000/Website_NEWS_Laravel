 
@extends('layout.index')
@section('content')
 <!-- Page Content -->
    <div class="container">

     

        <div class="space20"></div>


        <div class="row main-left">
            @include('layout.menu')

            <div class="col-md-9">
                <div class="panel panel-default">            
                    <div class="panel-heading" style="background-color:#337AB7; color:white;" >
                         <marquee><h2 style="margin-top:0px; margin-bottom:0px; color: red;">Tin nóng trong ngày</h2></marquee>
                    </div>
                    
                                <div class="panel panel-default">
                  
                    <div class="panel-body">
                        @foreach( $tinnong as $tn)
                        <!-- item -->
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-5">
                                <a href="tintuc/{{$tn->id}}/{{$tn->TieuDeKhongDau}}.html">
                                    <img class="img-responsive" src="upload/tintuc/{{$tn->Hinh}}" alt="">
                                </a>
                            </div>
                            <div class="col-md-7">
                                <a href="tintuc/{{$tn->id}}/{{$tn->TieuDeKhongDau}}.html"><b>{{$tn->TieuDe}}</b></a>
                            </div>
                            <p style="color: #999999; padding-left:5px;" >{{$tn->TomTat}}</p>
                            <div class="break"></div>
                        </div>
                        <!-- end item -->
                        @endforeach
                    </div>
                </div>

                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- end Page Content -->
@endsection