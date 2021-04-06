<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BookController extends Controller
{

    /**
     * 列表
     */
    public function bookList()
    {
        $data_table1 = [
            'book_status'  => '',//$_POST['book_status'],
            'user_name'  => '',//$_POST['user_name'],
            'user_tel'   => '13333333333',//$_POST['user_tel'],
            'book_num'   => '',//$_POST['book_num']
        ];
        if(isset($data_table1['book_status'])&&!empty($data_table1['book_status'])){
            $list = DB::table("book_info")->where('book_status',$data_table1['book_status'])->get()->toArray();
        }else if(isset($data_table1['user_name'])&&!empty($data_table1['user_name'])){
            $list = DB::table("book_info")->where('user_name',$data_table1['user_name'])->get()->toArray();
        }else if(isset($data_table1['user_tel'])&&!empty($data_table1['user_tel'])){
            $list = DB::table("book_info")->where('user_tel',$data_table1['user_tel'])->get()->toArray();
        }else if(isset($data_table1['book_num'])&&!empty($data_table1['book_num'])){
            $list = DB::table("book_info")->where('book_num',$data_table1['book_num'])->get()->toArray();
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
     * 修改 状态
     */
    public function editBook()
    {

        // var_dump($_POST)
        $id = 2;
        $data = [
            'book_status' => 2,
            'book_time'   =>time()
        ];

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
