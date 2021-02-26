@extends('admin.layout.index')
@section('content')
<!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">User
                            <small>{{$user->name}}</small>
                        </h1>
                    </div>
                    @if(session('thongbao'))
                        <div class="alert alert-success">
                            {{session('thongbao')}}
                        </div>
                    @endif
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form action="admin/user/sua/{{$user->id}}" method="POST">
                           <input type="hidden" name="_token" value="{{csrf_token()}}" />
                            <div class="form-group">
                                <label>Họ Tên</label>
                                <input class="form-control" name="name" placeholder="nhập họ và tên" value="{{$user->name}}" />
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" placeholder="nhập email" value="{{$user->email}}" readonly="" />
                            </div>
                            <div class="form-group">
                                <label>Đổi mật khẩu </label>
                                <input type="checkbox" id="changePassword" name="changePassword">
                                <input type="password" class="form-control password" name="password" placeholder="Nhập họ và tên" 
                                disabled="" />
                            </div>
                            <div class="form-group">

                                <label> Nhập Lại  mật khẩu </label>
                                <input type="password" class="form-control password" name="passwordAgain" placeholder="nhập lại password"
                                disabled="" />
                            </div>
                           
                            <div class="form-group">
                                <label>chọn quyền người dùng</label>
                               {{--  <label class="radio-inline"> --}}
                                <label class="radio-inline">
                                    <input name="quyen" value="0"
                                        @if($user->quyen==0)
                                            {{"checked"}}
                                        @endif
                                    type="radio">người dùng
                                </label> 
                                <label style="margin-left: 15px;">
                                    <input name="quyen" value="1" 
                                        @if($user->quyen==1)
                                            {{"checked"}}
                                        @endif
                                    checked="" type="radio" style="margin-left:     5px;" >amdin 
                                </label>
                                </label>
                                
                            </div>
                            <button type="submit" class="btn btn-default">Sửa</button>
                            <button type="reset" class="btn btn-default">làm mới</button>
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
@endsection

@section('script')
    <script>
       $(document).ready(function() {
        $("#changePassword").change(function(){
                if($(this).is(":checked"))
                {
                    $(".password").removeAttr('disabled');
                }
                else
                {
                    $(".password").attr('disabled','');
                }
        });
           
       });  
    </script>
@endsection
