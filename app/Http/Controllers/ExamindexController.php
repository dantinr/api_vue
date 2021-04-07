<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ExamindexController extends Controller
{

    public function hello()
    {
        echo "Hello World";
    }

    /**
     * 获取套餐列表
     */
    public function comboList()
    {
        $id = 1;
        //$row = DB::table("combo")->find($id);     //查询一条记录
        $list = DB::table("exam_index")->limit(10)->get()->toArray();
        //echo '<pre>';print_r($list);echo '</pre>';

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
     * 添加套餐
     */
    public function addCombo()
    {


        $data = [
            'exam_id'      => 'TJXM00002',
            'exam_name'    => '红细胞计数',
            'exam_unit'    => 'L',
            'exam_cap'     =>  400,
            'exam_floor'   => 800,
            'exam_normal'  => '正常',
            'exam_piangao' =>  '偏高'  ,
            'exam_flat'    =>  '偏低',
            'exam_whether' =>   1
        ];

        $id = DB::table('exam_index')->insertGetId($data);
        var_dump($id);
        echo "添加成功";
    }

    /**
     * 编辑套餐
     */
    public function editCombo()
    {
        $id = 2;
        $data = [
            'price' => 180000
        ];

        $res = DB::table("combo")->where(['id'=>$id])->update($data);
        var_dump($res);
        echo "更新套餐";
    }

    /**
     * 删除套餐
     */
    public function deleteCombo()
    {
        $id = 1;
        $res = DB::table("exam_index")->where(['id'=>$id])->delete();
        var_dump($res);
        echo "删除套餐";

    }


    /**
     * 数据填充
     */
    public function fillData()
    {
        for($i=0;$i<100;$i++){
            $price = mt_rand(1000,1200);
            $data = [
                'exam_id'      => 'BZZB'.Str::random(6),
                'exam_name'    => Str::random(8),
                'exam_unit'         => 'L',
                'exam_cap'     => $price+200,
                'exam_floor'      => $price -200,
                'exam_normal'      => '正常',
                'exam_piangao'      => '偏高',
                'exam_flat'     => '偏低',
                'exam_whether'  => '1'

            ];

            echo DB::table("exam_index")->insertGetId($data);
            echo '</br>';
        }
    }

    public function test()
    {


        $data = [
//            'exam_id'      => 'BZZB'.Str::random(6),
//            'exam_name'    => Str::random(8),
//            'exam_unit'         => 'L',
//            'exam_cap'     => $price+200,
//            'exam_floor'      => $price -200,
//            'exam_normal'      => '正常',
//            'exam_piangao'      => '偏高',
//            'exam_flat'     => '偏低',
//            'exam_whether'  => '1'

        ];

        $id = DB::table("combo")->insertGetId($data);
        if($id){
            // TODO 添加成功
        }else{
            // TODO 添加失败
        }

        $response = [
            "errno" => 0,
            "msg"   => "ok",
            "id"    => $id
        ];

        return $response;
    }


    /**
     * 生成 套餐ID
     */
    private function generateComboId()
    {
        return "BZZB-". Str::random(8);
    }


}
