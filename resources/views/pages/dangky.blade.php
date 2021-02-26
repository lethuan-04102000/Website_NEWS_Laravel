@extends('layout.index')


@section('content')

  <!-- Page Content -->
    <div class="container">

    	<!-- slider -->
    	<div class="row carousel-holder">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="panel panel-default">
				  	<div class="panel-heading" 
				  	  style="font-size: 50px;
					  color: #2c2c2c;
					  background-color: #d5d5d5;
					  letter-spacing: .05em;
					  text-shadow: 4px 4px 0px #d5d5d5, 7px 7px 0px rgba(0, 0, 0, 0.2);
					  height: 100px;">Đăng ký tài khoản</div>
				  	<div class="panel-body">
						@if(count($errors)>0)
						<div class="alert alert-success">
                            @foreach($errors->all() as $err)
								{{$err}}
                            @endforeach
                        </div>	
						@endif

				  		@if(session('thongbao'))
                        <div class="alert alert-success">
                            {{session('thongbao')}}
                        </div>
                   		 @endif
				    	<form action="dangky" method="post">
				    	<input type="hidden" name="_token" value="{{csrf_token()}}"/>
				    		<div>
				    			<label>Họ tên</label>
							  	<input type="text" class="form-control" placeholder="Username" name="name" aria-describedby="basic-addon1">
							</div>
							<br>
							<div>
				    			<label>Email</label>
							  	<input type="email" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1"
							  	>
							</div>
							<br>	
							<div>
				    			<label>Nhập mật khẩu</label>
							  	<input type="password" class="form-control" name="password" aria-describedby="basic-addon1">
							</div>
							<br>
							<div>
				    			<label>Nhập lại mật khẩu</label>
							  	<input type="password" class="form-control" name="passwordAgain" aria-describedby="basic-addon1">
							</div>
							<br>
							<button type="submit" class="btn btn-default">Đăng ký
							</button>

				    	</form>
				  	</div>
				</div>
            </div>
            <div class="col-md-2">
            </div>
        </div>
        <!-- end slide -->
    </div>
    <!-- end Page Content -->
@endsection