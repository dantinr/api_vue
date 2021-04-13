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
    public function comboList(Request $request)
    {

//        $id = 1;
        //$row = DB::table("combo")->find($id);     //查询一条记录
        $size = $request ->get('size');
        $list = DB::table("exam_index")->where(['exam_delete'=>0])->orderBy('id','desc')->paginate($size);
        //echo '<pre>';print_r($list);echo '</pre>';

        $data = [
            'errno' => 0,
            'msg'   => 'ok',
            'data'  => [
                'list'  => $list
            ]
        ];
        return $list;
        echo json_encode($data,JSON_UNESCAPED_UNICODE);
    }

    /**
     * 搜索
     */
        public function inquire(Request $request){
//                $condition = [
//                    "exam_name"   => 'c',
//                    "exam_whether"  => 1,
//                ];
                $exam_name = $request->exam_name;
                $exam_whether = $request->exam_whether;


                $size = $request ->get('size');
                //按id查询
                if(!empty($exam_name||$exam_name==0) && !empty($exam_whether||$exam_whether==0)){
                    //判断第一个字符，如果是 英文就是 id  否则就是 项目名称
                        $list = DB::table("exam_index")
                            ->where('exam_whether','=',$exam_whether)
                            ->Where('exam_name','like',"%$exam_name%")
                            ->Where('exam_delete',0)
                            ->paginate($size);


                }else if(!empty($exam_name) || !empty($exam_whether)){

                    $list = DB::table("exam_index")
                        ->where('exam_whether','=',$exam_whether)
                        ->orWhere('exam_name','like',"%$exam_name%")
                        ->Where(['exam_delete'=>0])
                        ->paginate($size);
                }else{

                        $list = DB::table("exam_index")->get()->toArray();
                    }
                return $list;

                }



    /**
     * 添加套餐
     */
    public function addCombo()
    {
        $data = json_decode(file_get_contents('php://input'),true);
        $data['exam_id'] = 'BZZB-'.Str::random(8);
//        $data = [
////            'exam_id'      => 'TJXM00002',
////            'exam_name'    => '红细胞计数',
////            'exam_unit'    => 'L',
////            'exam_cap'     =>  400,
////            'exam_floor'   => 800,
////            'exam_normal'  => '正常',
////            'exam_piangao' =9b
////            'exam_flat'    =>  '偏低',
////            'exam_whether' =>   1
//        ];

        $id = DB::table('exam_index')->insertGetId($data);
        var_dump($id);
        echo "添加成功";
    }

    /**
     * 编辑套餐
     */
    public function editCombo()
    {
//        $id = 3 ;
//        $data = [
//            'price' => 180000
//        ];
        $data = json_decode(file_get_contents('php://input'),true);
        $res = DB::table("exam_index")->where(['id'=>$data['id']])->update($data);
        var_dump($res);
        echo "更新套餐";
    }

    /**
     * 删除套餐
     */
    public function deleteCombo()
    {
        $id = json_decode(file_get_contents('php://input'),true);

        $res = DB::table("exam_index")->where(['id'=>$id])->update(['exam_delete'=>'1']);

        if($res){
          $delData=[
              "errno" => 0,
              "msg"   => "删除成功",
              "$res"    => $res
          ];
        }else{
            $delData=[
                "errno" => 1,
                "msg"   => "删除失败"
            ];
        }




        echo json_encode($delData);


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
