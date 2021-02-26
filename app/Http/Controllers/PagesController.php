<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\TheLoai;
use App\Slide;
use App\loaiTin;
use App\TinTuc;
use App\User;
class PagesController extends Controller
{
    //
    function __construct()
    {
    	$theloai=TheLoai::all();
    	$slide =Slide::all();
    	view()->share('theloai',$theloai);
    	view()->share('slide',$slide);

        // if(Auth::check())
        // {
        //     view()->share('nguoidung',Auth::user());

        // }
        if (Auth::check()) {
            $nguoidung = Auth::user();
            View::share(['nguoidung' => $nguoidung]);
        }

    }

    function trangchu(){
    	
    	return view('pages.trangchu');
        
    }
    function lienhe(){
    	
    	return view('pages.lienhe');
    }

    function  tintuc1()
    {
        $tinnong = TinTuc::Where('TinNong',1)->orderBy('id','desc') ->take(3)->get();
        return view('pages.tintuc1',['tinnong'=>$tinnong]);
    }

    

    function loaitin($id)
    {
    	$loaitin =loaiTin::find($id);
    	$tintuc=TinTuc::where('idLoaiTin',$id)->paginate(5);
    	return view('pages.loaitin',['loaitin'=>$loaitin,'tintuc'=>$tintuc]);
    }
    function  tintuc($id)
    {
        $tintuc = TinTuc:: find($id);
        $tinnoibat = TinTuc::Where('NoiBat',1)->orderBy('id','desc') ->take(3)->get();
        $tinnong = TinTuc::Where('TinNong',1)->orderBy('id','desc') ->take(3)->get();
        $tinlienquan = TinTuc:: Where('idLoaiTin',$tintuc->idLoaiTin)->take(3)->get();
        return view('pages.tintuc',['tintuc'=>$tintuc,'tinnong'=>$tinnong,'tinnoibat'=>$tinnoibat,'tinlienquan'=>$tinlienquan]);

    }

    
    function getDangNhap(){
        return view('pages.dangnhap');
    }
     function postDangNhap(Request $request){
            
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
        if (Auth::attempt(['email' => $request ->email, 'password' => $request->password])) {
            $user = Auth::user();
            $request->session()->put('account', $user);
            //$acc = $request->session()->get('account');
            return redirect('trangchu');
        }
        else
        {
            return redirect('dangnhap')->with('thongbao', 'Đăng Nhập Không Thành Công');
        }
    }
    function getDangXuat()
    {
        Auth::logout();
        return redirect('trangchu');
    }

    function getNguoidung()
    {
        $user =Auth::user();
        return view('pages.nguoidung',['nguoidung'=>$user]);

    }
    public function postNguoidung(Request  $request)
    {
        # code...
        $this->validate($request,
            [
                'name'=>'required|min:3',
            ],
            [
                'name.required'=>'Bạn chưa nhập tên người dùng',
                'name.min'=>'Tên người dùng phải có ít nhất 3 kí tự',
            ]);
        $user = Auth::user();
        $user->name = $request->name;   
        
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
        return redirect('nguoidung')->with('thongbao' , 'Sửa Thành Công');
    }

    function getDangKy(){
        return view('pages.dangky');
    }

    function postDangKy(Request $request){
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
        $user->quyen = 0;
        $user->save();
        return redirect('dangky')->with('thongbao' , 'đăng ký thành công Thành Công');
    }

    function timkiem(Request $request)
    {
            $tukhoa= $request->tukhoa;
            $tintuc= TinTuc::Where('TieuDe','like',"%$tukhoa%")->orWhere('TomTat','like',"%$tukhoa%")->orWhere('NoiDung','like',"%$tukhoa%")->take(30)->paginate(5);
            return view('pages.timkiem',['tintuc'=>$tintuc,'tukhoa'=>$tukhoa]);

    }
}
