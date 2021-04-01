<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ComboController extends Controller
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
        $list = DB::table("combo")->limit(10)->get()->toArray();
        //echo '<pre>';print_r($list);echo '</pre>';

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
     * 添加套餐
     */
    public function addCombo()
    {
        $data = [
            'combo_id'      => 'TJXM00002',
            'combo_name'    => '老年人体检套餐尊贵版（女）',
            'price'         => 120000,
            'price_now'     => 88000,
            'location'      => '北京',
            'is_avaliable'  => 1,
            'add_time'      => time()
        ];

        $id = DB::table('combo')->insertGetId($data);
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
        $res = DB::table("combo")->where(['id'=>$id])->delete();
        var_dump($res);
        echo "删除套餐";

    }


    /**
     * 数据填充
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
                'combo_id'      => 'TJXM'.Str::random(6),
                'combo_name'    => Str::random(8),
                'price'         => $price,
                'price_now'     => $price - 200,
                'location'      => $location[mt_rand(0,3)],
                'sold_num'      => mt_rand(0,888),
                'add_time'      => $now
            ];

            echo DB::table("combo")->insertGetId($data);
            echo '</br>';
        }
    }


}
