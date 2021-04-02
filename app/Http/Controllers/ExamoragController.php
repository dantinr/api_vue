<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ExamoragController extends Controller
{
    public function hello()
    {
        echo "Hello World520522222222222222";
    }

    /**
     * 获取体检机构表
     */
    public function examList()
    {
        $id = 1;
        // $row = DB::table("exam_orga")->find($id);
        $list = DB::table("exam_orga")->limit(10)->get()->toArray();

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
     * 添加
     * 
     */
    public function addExam()
    {
        $data = [
            'exam_id' => '00002',
            'exam_name' => '试试看',
            'exam_branch' => '520分店',
            'exam_city' => '邯郸市',
            'exam_genre' => '专业体检机构2',
            'exam_tel' => '12312312315',
            'exam_start' => '0',
            'exam_img'  => 'https://img0.baidu.com/it/u=2151136234,3513236673&fm=26&fmt=auto&gp=0.jpg',
            'exam_property' => '1',
            'exam_coord1'  => '15',
            'exam_coord2'  => '15',

        ];

        $id = DB::table('exam_orga')->insertGetId($data);
        var_dump($id);
        echo "添加成功";
    }

    /** 
     * 编辑
     */
    public function editExam()
    {
        $id = 2;
        $data = [
            'exam_name' => 456456
        ];

        $res = DB::table("exam_orga")->where(['id'=>$id])->update($data);
        var_dump($res);
        echo "更新套餐";
    }


    /**
     * 删除
     */
    public function deleteExam()
    {
        $id = 1;
        $res = DB::table("exam_orga")->where(['id'=>$id])->delete();
        var_dump($res);
        echo "删除套餐";

    }

    /**
     * 查询
     */
    public function findExam()
    {
        $id = 3;
        // $row = DB::table("exam_orga")->find($id);
        $list = DB::table("exam_orga")->find($id);

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
                'exam_id'      => $price,
                'exam_name'    => $price,
                'exam_branch'  => $location[mt_rand(0,3)].'店',
                
                'exam_city'    => $location[mt_rand(0,3)],
                'exam_genre'   => $location[mt_rand(0,3)].'体验机构',
                'exam_tel'     => $price,
            ];

            echo DB::table("exam_orga")->insertGetId($data);
            echo '</br>';
        }
    }




    public function test()
    {


        $data = [
            "exam_id"      => $this->generateExamId(),
            "exam_name"    => $_POST["exam_name"],
            "exam_branch"  => $_POST["exam_branch"],
            "exam_city"     => $_POST["exam_city"],
            "exam_tel"      => $_POST["exam_tel"]
        ];

        $id = DB::table("exam_orga")->insertGetId($data);
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
     * 生成 id
     */

    private function generateExamId()
    {
        return  Str::random(8);
    }

}
