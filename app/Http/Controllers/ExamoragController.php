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
    public function examList(Request $request)
    {
        $size = $request->get("size");
        
        $list = DB::table("exam_orga")->where('is_delete',0)->orderBy('id','desc')->paginate($size);
        $total = DB::table("exam_orga")->where('is_delete',0)->count();

        if($list){
            $data = [
            'errno' => 0,
            'msg'   => 'ok',
            'total' =>$total,
            'data'  => $list
            ];
        }else{
            $data = [
                'error' => 1,
                'msg' => '列表无数据'
            ];
        }
        
        echo json_encode($data);
    }
    /**
     * 添加
     * 
     */
    public function addExam()
    {
        $examData = json_decode(file_get_contents('php://input'),true);

        $examData['exam_img'] = 'https://img0.baidu.com/it/u=2151136234,3513236673&fm=26&fmt=auto&gp=0.jpg';
        
        // print_r($examData);die;
        
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
        $data = json_decode(file_get_contents('php://input'),true);

        // print_r($data);die;

        $res = DB::table('exam_orga')->where(['id'=>$data['id']])->update($data);
        if($res){
            $examData = [
                'errno'     => 0,
                'msg'       => 'ok',
                
            ];
        }else{
            $examData = [
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
        $id = json_decode(file_get_contents('php://input'),true);
        foreach($id as $v){
            $res = DB::table("exam_orga")->where(['id'=>$v])->update(['is_delete'=>1]);
        
        }
        // print_r($res);die;
        if($res){
            //TODO删除成功
            $delData = [
                "errno" => 0,
                "msg" => "ok",
                "id" => $res
            ];
        }else{
            $delData  = [
                "errno" => 1,
                "msg" => "删除失败",
                
            ];
        }
            echo json_encode($delData);

    }

    /**
     * 查询
     */
    public function findExam(Request $request)
    {

        $condition = json_decode(file_get_contents('php://input'),true);
        
        // print_r($condition);die;
        $list = DB::table("exam_orga")->where('exam_name','like','%'.$condition["findData"]["user"].'%')->paginate($condition["findData"]["size"]);
        //id查询
        // if(isset($condition["exam_name"]) && !empty($condition["exam_name"])){
            // $patten = '/^[0-9].*/';
            // if(preg_match($patten,$condition["exam_name"])){
                
            // }
        // }else{
        //     if(isset($condition["exam_city"])&& !empty($condition["exam_city"])){

        //         $list = DB::table("exam_orga")->where('exam_city','like','%'.$condition["exam_city"].'%')->get()->toArray();
        //      }else if(isset($condition["exam_start"])){
 
        //          $list = DB::table("exam_orga")->where('exam_start','like','%'.$condition["exam_start"].'%')->get()->toArray();
        //      }else if(isset($condition["exam_genre"])){
 
        //         $list = DB::table("exam_orga")->where('exam_genre','like','%'.$condition["exam_genre"].'%')->get()->toArray();
        //     }
        // }

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
