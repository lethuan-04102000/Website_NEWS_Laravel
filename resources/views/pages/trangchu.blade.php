@extends('layout.index')

@section('content')
 <!-- Page Content -->
    <div class="container">

    	@include('layout.slide')

        <div class="space20"></div>


        <div class="row main-left">
            @include('layout.menu')

            <div class="col-md-9">
	            <div class="panel panel-default">  
					
	            	<div class="panel-heading" style=" font-size: 34px;">
                         TIN NỔI BẬT   {{--<marquee style="background-color:   white;">
				                        
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

	            	<div class="panel-body">
	            		@foreach($theloai as $tl)
	            			@if(count($tl->loaitin)>0)
		            		<!-- item -->


						    <div class="row-item row">
			                	<h3>
			                		<a href="#" style="color: green">{{$tl->Ten}}</a> | 	
			                		@foreach($tl->loaitin as $lt)
			                		<small >
			                			<a href="loaitin/{{$lt->id}}/{{$lt->TenKhongDau}}.html">
			                				<i style="color: green">{{$lt->Ten}}</i>
			                			</a>/
			                		</small>

			                		@endforeach		
			                	</h3>
			                		<hr style="color: green">
			                	<?php
			                	$data = $tl->tintuc->where('NoiBat',1)->sortByDesc('created_at')->take(5);
			                	$tin1 = $data->shift();
			                	?>

			                	<div class="col-md-8 border-right">
			                		<div class="col-md-4">
				                        <a href="tintuc/{{$tin1['id']}}/{{$tin1['TieuDeKhongDau']}}.html">
				                            <img class="img-responsive" src="upload/tintuc/{{$tin1['Hinh']}}" alt=""  style="height: 150px; width: 150px;">
				                        </a>
				                    </div> 	

				                    <div class="col-md-8">
				                        <h3>{{$tin1['TieuDe']}}</h3>
				                        
				                        <a class="btn btn-primary" href="tintuc/{{$tin1['id']}}/{{$tin1['TieuDeKhongDau']}}.html">Xem Thêm<span class="glyphicon glyphicon-chevron-right"></span></a>
									</div>


			                	</div>

								
			                    

								<div class="col-md-4">
									@foreach($data->all() as $tintuc )
									<a href="tintuc/{{$tintuc['id']}}/{{$tintuc['TieuDeKhongDau']}}.html">
										<h4>
											<span class="glyphicon glyphicon-list-alt"></span>
											{{$tintuc['TieuDe']}}
										</h4>
									</a>
									@endforeach
								</div>
								
								<div class="break"></div>
			                </div>
			                <!-- end item -->
			                @endif
		                @endforeach
					</div>
	            </div>
        	</div>
        </div>
        <!-- /.row -->
    </div>
    <!-- end Page Content -->
@endsection