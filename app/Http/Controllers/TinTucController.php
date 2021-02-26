<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

use App\TheLoai;
use App\Tintuc;
use App\LoaiTin;
use App\Comment;

class TinTucController extends Controller
{
    public function getDanhSach()
    {   
        $tintuc = TinTuc::orderBy('id' ,'DESC')->paginate(10);
        return view('admin.tintuc.danhsach' , ['tintuc'=>$tintuc]);
    }


     public function getThem()
    {   
        $theloai = TheLoai::all();
        $loaitin = LoaiTin::all();
        return view('admin.tintuc.them' , ['theloai' => $theloai],['loaitin'=>$loaitin]);
    }
    public function postThem(Request $request)
    {
        $this->validate($request,
            [
                'LoaiTin'=>'required',
                'TieuDe' =>'required|min:3|unique:TinTuc,TieuDe',
                'TomTat' =>'required',
                'NoiDung'=>'required',
            ],
            [
                'LoaiTin.required'=>'Bạn chưa chọn loại tin',
                'TieuDe.required' =>'Bạn chưa nhập tiêu đề',
                'TieuDe.min'=> 'Tiêu đề phải có ít nhất 3 kí tự',
                'TieuDe.unique'=>'Tiêu đề đã tồn tại',
                'TomTat.required'=>'Bạn chưa nhập tóm tắt',
                'NoiDung.required'=>'Bạn chưa nhập nội dung',
            ]);
        $tintuc = new Tintuc;
        $tintuc->TieuDe = $request->TieuDe;
        $tintuc->TieuDeKhongDau = changeTitle($request->TieuDe);
        $tintuc->idLoaiTin= $request->LoaiTin;
        $tintuc->TomTat=$request->TomTat;
        $tintuc->NoiDung=$request->NoiDung;
        $tintuc->NoiBat=$request->NoiBat;
        $tintuc->TinNong=$request->TinNong;
        $tintuc->SoLuotXem=0;
        if ($request->hasFile('Hinh')) 
        {
            $file =$request->file('Hinh');
            $duoi = $file->getClientOriginalExtension();
            if ($duoi != 'jpg' && $duoi !='png' && $duoi != 'jpeg') {
                return redirect('admin/tintuc/them')->with('loi' ,'Bạn chỉ chọn được file có đuôi  jpg, png, jpeg ');
            }
            $name = $file->getClientOriginalName();
            $Hinh= Str::random(4)."_".$name;
            while (file_exists("upload/tintuc".$Hinh)) 
            {
                $Hinh= Str::random(4)."_".$name;
            }
            $file->move("upload/tintuc",$Hinh);
            $tintuc->Hinh = $Hinh;
        }   
        else
        {
            $tintuc->Hinh="";
        }
        $tintuc->save();
        return redirect('admin/tintuc/them')->with('thongbao' ,'Thêm Tin Thành Công');
    }

    public function getSua($id)
    {   
        $tintuc = TinTuc::find($id);
        $theloai = TheLoai::all();
        $loaitin = LoaiTin::all();
    
        return view('admin.tintuc.sua',['tintuc'=>$tintuc, 'theloai' => $theloai, 'loaitin'=>$loaitin]);
    }
    public function postSua(Request $request , $id)
    {
        $tintuc = Tintuc::find($id);
        $this->validate($request,
            [
                'LoaiTin'=>'required',
                'TieuDe' =>'required|min:3|unique:TinTuc,TieuDe',
                'TomTat' =>'required',
                'NoiDung'=>'required',
            ],
            [
                'LoaiTin.required'=>'Bạn chưa chọn loại tin',
                'TieuDe.required' =>'Bạn chưa nhập tiêu đề',
                'TieuDe.min'=> 'Tiêu đề phải có ít nhất 3 kí tự',
                'TieuDe.unique'=>'Tiêu đề đã tồn tại',
                'TomTat.required'=>'Bạn chưa nhập tóm tắt',
                'NoiDung.required'=>'Bạn chưa nhập nội dung',
            ]);
        $tintuc->TieuDe = $request->TieuDe;
        $tintuc->TieuDeKhongDau = changeTitle($request->TieuDe);
        $tintuc->idLoaiTin= $request->LoaiTin;
        $tintuc->TomTat=$request->TomTat;
        $tintuc->NoiDung=$request->NoiDung;
        $tintuc->NoiBat = $request->NoiBat;
        $tintuc->SoLuotXem=0;
        $tintuc->created_at = $request->created_at;
        if ($request->hasFile('Hinh')) 
        {
            $file =$request->file('Hinh');
            $duoi = $file->getClientOriginalExtension();
            if ($duoi != 'jpg' && $duoi !='png' && $duoi != 'jpeg') {
                return redirect('admin/tintuc/them')->with('loi' ,'Bạn chỉ chọn được file có đuôi  jpg, png, jpeg ');
            }
            $name = $file->getClientOriginalName();
            $Hinh= Str::random(4)."_".$name;
            while (file_exists("upload/tintuc".$Hinh)) 
            {
                $Hinh= Str::random(4)."_".$name;
            }
            $file->move("upload/tintuc",$Hinh);
            unlink("upload/tintuc/".$tintuc->Hinh);
            $tintuc->Hinh = $Hinh;
        }   
        
        $tintuc->save();
        return redirect('admin/tintuc/sua/'.$id)->with('thongbao','Sửa thành công');

    }

    public function getXoa($id)
    {
  
        $tintuc = TinTuc::find($id);
        $comment = Comment::where('idTinTuc',$id); 
        $comment->delete(); 
        $tintuc->delete(); 
        return redirect('admin/tintuc/danhsach')->with('thongbao','Xóa thành công');
    }
    
}