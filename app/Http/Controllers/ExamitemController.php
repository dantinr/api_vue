<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
class ExamitemController extends Controller
{
    /**
     * 测试
     */
    public function hello()
    {
        echo "测试";
    }
    /**
     * 添加
     */
    public function additem()
    {
        $now = time();
        $d=json_decode(file_get_contents("php://input"),true);
        $data = [
            'item_id'      => 'TJXM'.Str::random(6),
            'item_name'    =>$d['item_name'],
            'is_avaliable'=>$d['is_avaliable'],
            'label'=>$d['label'],
            'price'         => $d['price'],
            'price_now'     => $d['price_now'],
            'location'      => $d['location'],
            'district'     =>$d['district'],
            'organization'  => $d['organization'],
            'embranchment'      => $d['embranchment'],
            'scope'=>$d['scope'],
            'significance'=>$d['significance'],
            'attention'=>$d['attention'],
            'add_time'=>$now,
        ];

        $id = DB::table('exam_items')->insertGetId($data);
//        var_dump($id);
        if($id){
            $response = [
                "errno" => 0,
                "msg"   => "ok",
                "id"    => $id
            ];
        }else{
            $response = [
                "errno" => 40001,
                "msg"   => "发生错误",
                "id"    => $id
            ];
        }



        return $response;
//        echo "添加成功";
    }
    /**
     * 查询
     */
    public function itemList(Request $request)
    {
        //?page=2&size=10
        $size = $request->get('size');
        $list = DB::table("exam_items")->paginate($size);

        $data = [
            'errno' => 0,
            'msg'   => 'ok',
            'data'  => [
                'list'  => $list
            ]
        ];
        echo json_encode($data,JSON_UNESCAPED_UNICODE);
    }

    /**
     * 搜索
     */
    public function searchitem(){

        $condition = [
            "item_id"   => $_GET['item_id'],
            "location"  => $_GET['location'],
            "organization" => $_GET['organization']
        ];

        //按id查询
        if(isset($condition["item_id"]) && !empty($condition["item_id"])){
            //判断第一个字符，如果是 英文就是 id  否则就是 项目名称

            $patten = '/^[a-zA-Z].*/';
            if(preg_match($patten,$condition["item_id"])){
                $list = DB::table("exam_items")->where('item_id','like','%'.$condition["item_id"].'%')->get()->toArray();
            }else{
                $list = DB::table("exam_items")->where('item_name','like','%'.$condition["item_id"].'%')->get()->toArray();

            }
        }else{

            if(isset($condition["location"])&& !empty($condition["location"])){

               $list = DB::table("exam_items")->where('location','like','%'.$condition["location"].'%')->get()->toArray();
            }else if(isset($condition["organization"])){

                $list = DB::table("exam_items")->where('organization','like','%'.$condition["organization"].'%')->get()->toArray();
            }


        }
        if($list){
            $findData = [
                'errno'         => 0,
                'msg'           => 'ok',
                'orgaData'      => $list
            ];
        }else{
            $findData = [
                'errno'         => 1,
                'msg'           => '未查询到数据'
            ];
        }

        return json_encode($findData);

    }
    /**
     * 修改
     */
    public function edititem()
    {
        $d=json_decode(file_get_contents("php://input"),true);
        $id = $d['id'];
        $data = [
            'item_id'      => 'TJXM'.Str::random(6),
            'item_name'    =>$d['item_name'],
            'is_avaliable'=>$d['is_avaliable'],
            'label'=>$d['label'],
            'price'         => $d['price'],
            'price_now'     => $d[ 'price_now'],
            'location'      => $d['location'],
            'district'     =>$d['district'],
            'organization'  => $d['organization'],
            'embranchment'      => $d['embranchment'],
            'scope'=>$d['scope'],
            'significance'=>$d['significance'],
            'attention'=>$d['attention'],

        ];

        $res = DB::table("exam_items")->where(['id'=>$id])->update($data);
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
    /**
     *删除
     */
    public function deleteitem()
    {
        $id = $_GET['id'];

        $res = DB::table('exam_items')->where(['id' => $id])->update(['is_delete' => 1]);

        if ($res) {
            $delData = [
                'errno' => 0,
                'msg' => 'ok',
                'info' => $res
            ];
        } else {
            $delData = [
                'errno' => 1,
                'msg' => '删除失败'
            ];
        }
        return json_encode($delData,JSON_UNESCAPED_UNICODE);
    }

    /**
     * 添加数据
     */
    public function fillData()
    {
        $location = [
            "北京",
            "天津",
            "上海,广州",
            "深圳"
        ];

        $now = time();
        for($i=0;$i<100;$i++){
            $price = mt_rand(100000,1000000);
            $data = [
                'item_id'      => 'TJXM'.Str::random(6),
                'item_name'    => '老年人体检套餐尊贵版（女）',
                'is_avaliable'=>0,
                'label'=>'男性项目',
                'price'         => 120000,
                'price_now'     => 88000,
                'location'      => $location[mt_rand(0,3)],
                'organization'  => '1',
                'embranchment'      => '1',
                'scope'=>'aaaa',
                'significance'=>'教师',
                'attention'=>'撒大声地',
                'add_time'=>$now,

            ];

            echo DB::table("exam_items")->insertGetId($data);
            echo '</br>';
        }
    }
}
