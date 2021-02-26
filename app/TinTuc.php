<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TinTuc extends Model
{
    protected $table = "TinTuc";

    public function loaitin()
    {
    	return $this->belongsTo('App\LoaiTin' ,'idLoaiTin','id'); //lay 1 gtri
    }
    public function comment()
    {
    	return $this->hasMany('App\Comment','idTinTuc','id');//quan he 1 nhieu
    }

}
