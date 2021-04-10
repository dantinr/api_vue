<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class OrgaindexController extends Controller
{
    /*
     *  机构指标列表
     * */
    public function orgaList(Request $request){

        $size = $request->get("size");      //数据条数

        $orgaList = DB::table('orga_index')->where('is_delete',0)->paginate($size);
        $total = DB::table('orga_index')->where('is_delete',0)->count();
//        print_r($total);die;

        if($orgaList){
            $orgaData = [
                'errno' => 0,
                'msg'   => 'ok',
                'total' => $total,
                'data'  => $orgaList
            ];
        }else{
            $orgaData = [
                'errno' => 1,
                'msg'   => '列表无数据'
            ];
        }

        echo json_encode($orgaData);
    }

    /*
     *  机构指标添加
     * */
    public function addOrga(Request $request){
//        print_r($_POST);die;
//        $orgaData = $request->post();
        $orgaData = json_decode(file_get_contents('php://input'),true);
//        print_r($orgaData);die;
        $now = time();
        $orgaData['orga_id'] = $this->generateOrgaId();
        $orgaData['orga_add_time'] = $now;
//        dd($orgaData);

        $id = DB::table('orga_index')->insertGetId($orgaData);

        if($id){
            $orgaInfo = [
                'errno'     => 0,
                'msg'       => 'ok',
                'id'        => $id
            ];
        }else{
            $orgaInfo = [
                'errno'     => 1,
                'msg'       => '添加失败',
                'id'        => $id
            ];
        }

        echo json_encode($orgaInfo);
    }

    /*
     *  机构指标查询
     * */
    public function findOrga(){

        $orgaModel = DB::table('orga_index');

        $orgaSerch_arr = json_decode(file_get_contents('php://input'),true);

//        print_r($orgaSerch_arr);die;

        if($orgaSerch_arr['serchForm']['serchName'] == null && $orgaSerch_arr['serchForm']['orgaInfo'] == null && $orgaSerch_arr['serchForm']['mappingStatus'] == null){
            $orgaList = DB::table('orga_index')->where('is_delete',0)->paginate($orgaSerch_arr['pageData']['size']);
        }

//        print_r($orgaSerch_arr);die
        if($orgaSerch_arr['serchForm']['orgaInfo'] == null){
            $orgaData = $orgaModel
                ->where('orga_name','like','%'.$orgaSerch_arr['serchForm']['serchName'].'%')
                ->where(['is_match'=>$orgaSerch_arr['serchForm']['mappingStatus']])
                ->where('is_delete',0)->paginate($orgaSerch_arr['pageData']['size']);
        }elseif($orgaSerch_arr['serchForm']['mappingStatus'] == null){
            $orgaData = $orgaModel
                ->where('orga_name','like','%'.$orgaSerch_arr['serchForm']['serchName'].'%')
                ->where(['belongs_orga'=>$orgaSerch_arr['serchForm']['orgaInfo']])
                ->where('is_delete',0)->paginate($orgaSerch_arr['pageData']['size']);
        }elseif($orgaSerch_arr['serchForm']['orgaInfo'] == null && $orgaSerch_arr['serchForm']['mappingStatus'] == null){
            $orgaData = $orgaModel
                ->where('orga_name','like','%'.$orgaSerch_arr['serchForm']['serchName'].'%')
                ->where('is_delete',0)->paginate($orgaSerch_arr['pageData']['size']);
        }else{
            $orgaData = $orgaModel
                ->where('orga_name','like','%'.$orgaSerch_arr['serchForm']['serchName'].'%')
                ->where(['belongs_orga'=>$orgaSerch_arr['serchForm']['orgaInfo']])
                ->where(['is_match'=>$orgaSerch_arr['serchForm']['mappingStatus']])
                ->where('is_delete',0)->paginate($orgaSerch_arr['pageData']['size']);
        }

        $total = count($orgaData);

        if($orgaData){
            $findData = [
                'errno'         => 0,
                'msg'           => 'ok',
                'total'         => $total,
                'serchOrgaData'      => $orgaData
            ];
        }else{
            $findData = [
                'errno'         => 1,
                'msg'           => '未查询到数据'
            ];
        }

        echo json_encode($findData);
    }

    /*
     *  机构指标修改
     * */
    public function editOrga(){

        $orgaData = json_decode(file_get_contents('php://input'),true);

        $res = DB::table('orga_index')->where(['id'=>$orgaData['id']])->update($orgaData);

        if($res){
            $editData = [
                'errno'         => 0,
                'msg'           => 'ok'
            ];
        }else{
            $editData = [
                'errno'         => 1,
                'msg'           => '修改失败'
            ];
        }

        echo json_encode($editData);

    }

    /*
     *  机构指标删除
     * */
    public function delOrga(){

        $id = json_decode(file_get_contents('php://input'),true);
//        print_r($id);die;
        foreach($id as $v){
            $res = DB::table('orga_index')->where(['id'=>$v])->update(['is_delete'=>1]);
        }


        if($res){
            $delData = [
                'errno'     => 0,
                'msg'       => 'ok',
                'info'      => $res
            ];
        }else{
            $delData = [
                'errno'     => 1,
                'msg'       => '删除失败'
            ];
        }

        echo json_encode($delData);
    }

    /*
    *  数据填充
    * */
    public function orgaFill(){
        $now = time();
        for($i=0;$i<200;$i++){
            $orgadata = [
                'orga_id'          => $this->generateOrgaId(),
                'orga_name'         => Str::random(8),
                'is_comparison'     => 0,
                'orga_unit'         => 'L',
                'upper_limit'       => mt_rand(0,800),
                'lower_limit'       => mt_rand(900,4000),
                'normal_message'    => Str::random(10),
                'high_message'      => Str::random(10),
                'low_message'       => Str::random(10),
                'belongs_orga'      => mt_rand(1,6),
                'exam_id'           => mt_rand(1,5),
                'is_match'          => 0,
                'orga_add_time'    => $now
            ];

            echo DB::table("orga_index")->insertGetId($orgadata);
            echo '</br>';
        }
    }

    /*
     *  生成  机构指标ID
     * */
    public function generateOrgaId(){

        $orgalength = DB::table('orga_index')->count();

        $orgalength = $orgalength + 1;

        if($orgalength >= 1 && $orgalength < 10){
            $orgalength = "0000".$orgalength;
        }else if($orgalength >= 10 && $orgalength < 100){
            $orgalength = "000".$orgalength;
        }else if($orgalength >= 100 && $orgalength < 1000){
            $orgalength = "00".$orgalength;
        }else if($orgalength >= 1000 && $orgalength < 10000){
            $orgalength = "0".$orgalength;
        }

        return 'JGZB'.$orgalength;
    }

}
