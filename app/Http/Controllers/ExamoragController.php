<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ExamoragController extends Controller
{
    public function hello()
    {
        $exam_name= 'aaa';
       //DB::table('exam_orga')->where('exam_name','like','%'.$exam_name.'%')->get();
    }

    /**
     * 获取体检机构表
     */
    public function examList()
    {
        $id = 1;
        // $row = DB::table("exam_orga")->find($id);
        $list = DB::table("exam_orga")->limit(10)->get()->toArray();

        if($list){
            $data = [
            'errno' => 0,
            'msg'   => 'ok',
            'data'  => $list
            ];
        }else{
            $data = [
                'error' => 1,
                'msg' => '000'
            ];
        }
        
        return json_encode($data);
    }
    /**
     * 添加
     * 
     */
    public function addExam()
    {
        $examData = json_decode(file_get_contents('php://input'),true);
        
        $data = [
            'exam_id' => $this->generateExamId(),
            'exam_name' => $examData['exam_name'],
            'exam_branch' => $examData['exam_branch'],
            'exam_city' => $examData['exam_city'],
            'exam_genre' => $examData['exam_genre'],
            'exam_tel' => $examData['exam_tel'],
            'exam_start' => $examData['exam_start'],
            'exam_img'  => 'https://img0.baidu.com/it/u=2151136234,3513236673&fm=26&fmt=auto&gp=0.jpg',
            'exam_property' => $examData['exam_property'],
            'exam_coord1'  => $examData['exam_coord1'],
            'exam_coord2'  => $examData['exam_coord2'],

        ];
        $_POST = $data;
        $id = DB::table('exam_orga')->insertGetId($examData);
        if($id){
            $examInfo = [
                'errno'     => 0,
                'msg'       => 'ok',
                'id'        => $id
            ];
        }else{
            $examInfo = [
                'errno'     => 1,
                'msg'       => '添加失败',
                'id'        => $id
            ];
        }
        return json_encode($examInfo);
    }
    /** 
     * 编辑
     */
    public function editExam()
    {
        $id= 1;
        $data = [
            // 'exam_id' => $this->generateExamId(),
            'exam_id' => $this->generateExamId(),
            'exam_name' => $_POST['exam_name'],
            'exam_branch' => $_POST['exam_branch'],
            'exam_city' => $_POST['exam_city'],
            'exam_genre' => $_POST['exam_genre'],
            'exam_tel' => $_POST['exam_tel'],
            'exam_start' => $_POST['exam_start'],
            'exam_img'  => 'https://img0.baidu.com/it/u=2151136234,3513236673&fm=26&fmt=auto&gp=0.jpg',
            'exam_property' => $_POST['exam_property'],
            'exam_coord1'  => $_POST['exam_coord1'],
            'exam_coord2'  => $_POST['exam_coord2'],

        ];

        $res = DB::table('exam_orga')->where(['id'=>$id])->update($data);
        if($id){
            $examData = [
                'errno'     => 0,
                'msg'       => 'ok',
                
            ];
        }else{
            $examDataData = [
                'errno'     => 1,
                'msg'       => '失败',
            ];
        }
        return json_encode($examData);
    }


    /**
     * 删除
     */
    public function deleteExam()
    {
        $id = $_GET['id'];
        $res = DB::table("exam_orga")->where(['id'=>$id])->delete();
        if($res){
            //TODO删除成功
            $response = [
                "errno" => 0,
                "msg" => "删除成功",
                "id" => $id
            ];
        }else{
            $response = [
                "errno" => 1,
                "msg" => "删除失败",
                "id" => $id
            ];
        }
            return $response;

    }

    /**
     * 查询
     */
    public function findExam()
    {
        $condition = [

            "exam_name" => $_GET['exam_name'],
            "exam_city" => $_GET['exam_city'],
            "exam_start" => $_GET['exam_start'],
            "exam_genre" => $_GET['exam_genre'],
        ];
        
        //id查询
        if(isset($condition["exam_name"]) && !empty($condition["exam_name"])){
            $patten = '/^[0-9].*/';
            if(preg_match($patten,$condition["exam_name"])){
                $list = DB::table("exam_orga")->where('exam_name','like','%'.$condition["exam_name"].'%')->get()->toArray();
            }
        }else{
            if(isset($condition["exam_city"])&& !empty($condition["exam_city"])){

                $list = DB::table("exam_orga")->where('exam_city','like','%'.$condition["exam_city"].'%')->get()->toArray();
             }else if(isset($condition["exam_start"])){
 
                 $list = DB::table("exam_orga")->where('exam_start','like','%'.$condition["exam_start"].'%')->get()->toArray();
             }else if(isset($condition["exam_genre"])){
 
                $list = DB::table("exam_orga")->where('exam_genre','like','%'.$condition["exam_genre"].'%')->get()->toArray();
            }
        }

        if($list){
            $findData = [
                'errno'         => 0,
                'msg'           => 'ok',
                'examData'      => $list
            ];
        }else{
            $findData = [
                'errno'         => 1,
                'msg'           => '未查询到数据'
            ];
        }

        echo json_encode($findData,JSON_UNESCAPED_UNICODE);

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
        /**
         * 
         * @var mixed
         */
        /**
         * 
         * @var mixed
         */
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




    /**
     * 生成 id
     */

    private function generateExamId()
    {
        // return  Str::random(8);
        $examlength = DB::table('exam_orga')->count();
        // print_r($examlength);die;

        $examlength = $examlength + 1;

        if($examlength >= 1 && $examlength < 10){
            $examlength = "0000".$examlength;
        }else if($examlength >= 10 && $examlength < 100){
            $examlength = "000".$examlength;
        }else if($examlength >= 100 && $examlength < 1000){
            $examlength = "00".$examlength;
        }else if($examlength >= 1000 && $examlength < 10000){
            $examlength = "0".$examlength;
        }

        return $examlength;
    }

}
