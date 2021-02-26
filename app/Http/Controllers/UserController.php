<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Comment;
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function getDanhSach()
    {
        $user = User::all();
        return view('admin/user/danhsach' , ['user' => $user]);
    }
    public function getThem()
    {
        return view("admin/user/them");
    }
    public function postThem(Request $request)
    {
        $this->validate($request,
            [
                'name'=>'required|min:3',
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:3|max:32',
                'passwordAgain'=>'required|same:password',
            ],
            [
                'name.required'=>'Bạn chưa nhập tên người dùng',
                'name.min'=>'Tên người dùng phải có ít nhất 3 kí tự',
                'email.required'=>'Bạn chưa nhập email',
                'email.email'=>'Bạn chưa nhập đúng định dạng email',
                'email.unique'=>'Email đã tồn tại',
                'password.required'=>'Bạn chưa nhập password',
                'password.min'=>'Mật khẩu phải có ít nhất 3 kí tự',
                'password.max'=>'Mật khẩu chỉ được tối đa 32 kí tự',
                'passwordAgain.required'=>'Bạn chưa nhập lại mật khẩu',
                'passwordAgain.same'=>'Mật khẩu nhập lại chưa khớp'
            ]);
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->quyen = $request->quyen;
        $user->save();
        return redirect('admin/user/them')->with('thongbao' , 'Thêm Thành Công');
    }
    public function getSua($id)
    {
        $user = User::find($id);
        return view('admin/user/sua' , ['user' => $user]);

    }
    public function postSua(Request $request ,$id)
    {
        $this->validate($request,
            [
                'name'=>'required|min:3',
            ],
            [
                'name.required'=>'Bạn chưa nhập tên người dùng',
                'name.min'=>'Tên người dùng phải có ít nhất 3 kí tự',
            ]);
        $user = User::find($id);
        $user->name = $request->name;   
        $user->quyen = $request->quyen;
        if ($request->changePassword == "on") {
            $this->validate($request,
            [
                'password'=>'required|min:3|max:32',
                'passwordAgain'=>'required|same:password',
            ],
            [
                'password.required'=>'Bạn chưa nhập password',
                'password.min'=>'Mật khẩu phải có ít nhất 3 kí tự',
                'password.max'=>'Mật khẩu chỉ được tối đa 32 kí tự',
                'passwordAgain.required'=>'Bạn chưa nhập lại mật khẩu',
                'passwordAgain.same'=>'Mật khẩu nhập lại chưa khớp'
            ]);
            $user->password = bcrypt($request->password);
        }
        $user->save();
        return redirect('admin/user/sua/'.$id)->with('thongbao' , 'Sửa Thành Công');
    }
    public function getXoa($id)
    {
        // $user = User::find($id);
        // $user->delete();
        // return redirect('admin/user/danhsach')->with('thongbao' , ' Xóa người dùng thành công');
        $user = User::find($id);
        $comment = Comment::where('idUser',$id); //Tìm các comment của user
        $comment->delete(); //Xóa các comment của user
        $user->delete(); //Xóa user
        return redirect('admin/user/danhsach')->with('thongbao','Xóa tài khoản thành công');
    
    }
    public function getdangnhapAdmin()
    {
        return view('admin.login');
    }
    public function postdangnhapAdmin(Request $request)
    {
        $this->validate($request,
            [
                'email'=>'required',
                'password'=>'required|min:3|max:32',
            ],
            [
                'email.required'=>'Bạn Chưa Nhập Email',
                'password.required'=>'Bạn Chưa Nhập Password',
                'password.min'=>'Password không được nhỏ hơn 3 kí tự',
                'password.max'=>'Password không được lớn hơn 32 kí tự'
            ]);
        $email = $request->input('email');
        $password = $request->input('password');
        if (Auth::attempt(['email' => $email, 'password' => $password])) {
            return redirect('admin/theloai/danhsach');
        }
        else
        {
            return redirect('admin/dangnhap')->with('thongbao', 'Đăng Nhập Không Thành Công');
        }

    }
    public function getdangxuatAdmin()
    {
        Auth::logout();
        return redirect('admin/dangnhap');
    }
}   