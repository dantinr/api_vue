<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BookController extends Controller
{

    /**
     * 查询
     */
    public function bookSearch()
    {
        $data_table1 = [
            'user_tel'   => $_GET['user_tel'],
            'book_status'=> $_GET['book_status'],
        ];
        if(isset($data_table1['user_tel'])&&!empty($data_table1['user_tel'])){
            $list = DB::table("book_info")->where('user_tel',$data_table1['user_tel'])->get()->toArray();
        }else if(isset($data_table1['book_status'])&&!empty($data_table1['book_status'])){
            $list = DB::table("book_info")->where('book_status',$data_table1['book_status'])->get()->toArray();
        }
        
        $data = [
            'errno' => 0,
            'msg'   => 'ok',
            'data'  => [
                'list'  => $list
            ]
        ];
        echo json_encode($data);
    }

    /**
     * 列表
     * 分页
     */
    public function bookPage(Request $request){
        $size = $request->get('size');
        $list = DB::table('book_info')->paginate($size);

        $data = [
            'error' => 0,
            'msg'   => 'ok',
            'data'  => [
                'list'  => $list
            ]
            ];
        return json_encode($data,JSON_UNESCAPED_UNICODE);
    }

    /**
     * 修改 状态
     */
    public function editBook(Request $request)
    {
        $id = $_GET['id'];
        $data = [
            'book_status' => $_GET['book_status'],
            'book_time' => $_GET['book_time'],
        ];
        $id = $request->id;
        if($data['book_status']){
            unset($data['book_time']);
        }else{
            unset($data['book_status']);
        }
        $res = DB::table("book_info")->where(['id'=>$id])->update($data);
        
        // var_dump($res);
        // echo "更新预约信息成功";
        if($res){
            // TODO 编辑成功
            $response = [
              "errno" => 0,
              "msg"   => "编辑成功",
          ];
          }else{
              // TODO 编辑失败
              $response = [
                  "errno" => 1,
                  "msg"   => "编辑失败",
              ];
          }
              return $response;
    }

}
