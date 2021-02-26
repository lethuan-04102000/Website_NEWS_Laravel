<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\LoaiTin;
use App\TheLoai;
use App\TinTuc;
use App\Comment;

class LoaiTinController extends Controller
{
    public function getDanhSach()
    {   
        $loaitin = LoaiTin::all();
        return view('admin.loaitin.danhsach' ,['loaitin' =>$loaitin]);
    }


     public function getThem()
    {   
        $theloai = TheLoai::all();
        return view('admin.loaitin.them' , ['theloai'=>$theloai]);
    }
    public function postThem(Request $request)
    {
        $this->validate($request,
            [
                'Ten' =>'required|unique:LoaiTin,Ten|min:1|max:100',
                'TheLoai' =>'required|'
            ],
            [
                'Ten.required' =>'Bạn Chưa Nhập Tên Loại Tin',
                'Ten.unique'=>'Tên Loại Tin Đã Tồn Tại',
                'Ten.min' =>'Ten Loại Tin Phải Có Độ Dài Từ 1 Đến 100 Kí TỰ',
                'Ten.max' =>'Ten Loại Tin Phải Có Độ Dài Từ 1 Đến 100 Kí TỰ',
                'TheLoai.required' =>'Bạn Chưa Chọn Thể Loại',
            ]);
        $loaitin = new LoaiTin;
        $loaitin->Ten = $request->Ten;
        $loaitin->TenKhongDau = changeTitle($request->Ten);
        $loaitin->idTheLoai = $request->TheLoai;
        $loaitin->save();
        return redirect('admin/loaitin/them')->with('thongbao' ,'Bạn Đã Thêm Thành Công');
    }

    public function getSua($id)
    {   
        $theloai = TheLoai::all();
        $loaitin = LoaiTin::find($id);
        return view('admin.loaitin.sua',['loaitin'=>$loaitin , 'theloai'=>$theloai] );
    }
    public function postSua(Request $request , $id)
    {       
            $loaitin = LoaiTin::find($id);
            $this->validate($request,
            [
                'Ten' =>'required|unique:LoaiTin,Ten|min:1|max:100',
                'TheLoai' =>'required|'
            ],
            [
                'Ten.required' =>'Bạn Chưa Nhập Tên Loại Tin',
                'Ten.unique'=>'Tên Loại Tin Đã Tồn Tại',
                'Ten.min' =>'Ten Loại Tin Phải Có Độ Dài Từ 1 Đến 100 Kí TỰ',
                'Ten.max' =>'Ten Loại Tin Phải Có Độ Dài Từ 1 Đến 100 Kí TỰ',
                'TheLoai.required' =>'Bạn Chưa Chọn Thể Loại',
            ]);
    
        $loaitin->Ten = $request->Ten;
        $loaitin->TenKhongDau = changeTitle($request->Ten);
        $loaitin->idTheLoai = $request->TheLoai;
        $loaitin->save();
        return redirect('admin/loaitin/sua/'.$id)->with('thongbao' ,'Bạn Đã Sửa Thành Công');

    }
    public function getXoa($id)
    {
      $loaitin = LoaiTin::find($id);
       
        $tintuc = TinTuc::where('idLoaiTin',$id)->get(); 
       
        foreach ($tintuc as $tt) {
            
            $comment = Comment::where('idTinTuc',$tt->id); 
            $comment->delete(); 
        }
        TinTuc::where('idLoaiTin',$id)->delete();
        $loaitin->delete(); 
        return redirect('admin/loaitin/danhsach')->with('thongbao','Xóa thành công');
    }
    
}