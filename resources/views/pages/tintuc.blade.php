
<link href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.css" rel="stylesheet">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.min.js"></script>
@extends('layout.index')
@section('content')
 <!-- Page Content -->
    <div class="container">
        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-9">

                <!-- Blog Post -->

                <!-- Title -->
                <h1 style="">{{$tintuc->TieuDe}}</h1>

                <!-- Author -->
                <p class="lead">
                     <a href="https://www.facebook.com/profile.php?id=100008299716148">Người viết bài:Lê Văn Thuận</a>
                </p>
                 <p><span class="glyphicon glyphicon-time"></span> Posted on: {{$tintuc->created_at}}</p>
                <!-- Preview Image -->
                <img class="img-responsive" src="upload/tintuc/{{$tintuc->Hinh}}" alt="" style="width: 200px; height: 250px;">

                <!-- Date/Time -->
               
                <hr>

                
                <!-- Post Content -->
                <i class="lead" style="font-family: t"> Tóm Tắt:   {!! $tintuc->TomTat !!}</i>
                <p class="lead">{!! $tintuc->NoiDung !!}</p>
                                
                <hr>

                <!-- Blog Comments -->

                <!-- Comments Form -->
                @if(Auth::check())
                <div class="well">
                    @if(session('thongbao'))
                        {{session('thongbao')}}
                    @endif
                    <h4>Viết bình luận ...<span class="glyphicon glyphicon-pencil"></span></h4>
                    <form action="comment/{{$tintuc->id}}" method="post" role="form">
                        <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                        <div class="form-group">
                            <textarea class="form-control" name="NoiDung" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Gửi</button>
                    </form>
                </div>
                <hr>
                @endif

                <!-- Posted Comments -->
                <p>Bình Luận Của Người Xem Bài</p>
                @foreach($tintuc->comment as $cm)
                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">{{$cm->user->name}} 
                            <small>{{$cm->created_at}}</small>
                        </h4>

                        {{$cm->NoiDung}}
                    </div>
                
                </div>
                @endforeach


                

                <!-- Posted Commens -->
                {{-- @foreach($tintuc->comment as $cm)
            
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">{{$cm->user->name}} 
                            <small>{{$cm->created_at}}</small>
                        </h4>

                        {{$cm->NoiDung}}
                    </div>
                </div>
                @endforeach
 --}}



            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-3">

                <div class="panel panel-default">
                    <marquee style="color: red;">TIN LIÊN QUAN</marquee>
                    <div class="panel-body">
                        @foreach( $tinlienquan as $tt)
                        <!-- item -->
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-5">
                                <a href="tintuc/{{$tt->id}}/{{$tt->TieuDeKhongDau}}.html">
                                    <img class="img-responsive" src="upload/tintuc/{{$tt->Hinh}}" alt="">
                                </a>
                            </div>
                            <div class="col-md-7">
                                <a href="tintuc/{{$tt->id}}/{{$tt->TieuDeKhongDau}}.html"><b>{{$tt->TieuDe}}</b></a>
                            </div>
                            <p style="color: #999999; padding-left:5px;" >{{$tt->TomTat}}</p>
                            <div class="break"></div>
                        </div>
                        <!-- end item -->
                        @endforeach
                    </div>
                </div>



                <div class="panel panel-default">
                    <marquee style="color: red;">TIN NÓNG TRONG NGÀY</marquee>
                    <hr>
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





                 <div class="panel panel-default">
                    <marquee style="color: red;"> <div class="panel-heading"><b>TIN NỔI BẬT</b></div></marquee>
                    <div class="panel-body">

                        @foreach( $tinnoibat as $tt )
                        <!-- item -->
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-5">
                                <a href="tintuc/{{$tt->id}}/{{$tt->TieuDeKhongDau}}.html">
                                    <img class="img-responsive" src="upload/tintuc/{{$tt->Hinh}}" alt="">
                                </a>
                            </div>
                            <div class="col-md-7">
                                <a href="tintuc/{{$tt->id}}/{{$tt->TieuDeKhongDau}}.html"><b>{{$tt->TieuDe}}</b></a>
                            </div>
                            <p style="color: #999999; padding-left:5px;">{{$tt->TomTat}}</p>
                            <div class="break"></div>
                        </div>
                        <!-- end item -->
                        @endforeach
                
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->
    </div>
    <!-- end Page Content -->
@endsection()