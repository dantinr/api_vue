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
        $orgaList = DB::table('orga_index')->where(['is_delete'=>0])->paginate($size);

        if($orgaList){
            $orgaData = [
                'errno' => 0,
                'msg'   => 'ok',
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
        $orgaData = $request->post();
        $now = time();
        $orgaData['orga_id'] = $this->generateOrgaId();
        $orgaData['orga_add_time'] = $now;

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
        $orga_name = '白细胞';
        $belongs_orga = '西祠';
        $is_match = 1;

        $orgaData = DB::table('orga_index')
            ->where('orga_name','like','%'.$orga_name.'%')
            ->orWhere('belongs_orga','like','%'.$belongs_orga.'%')
            ->orWhere('is_match','==',$is_match)
            ->get()->toArray();

        if($orgaData){
            $findData = [
                'errno'         => 0,
                'msg'           => 'ok',
                'orgaData'      => $orgaData
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
     *  机构指标修改查询
     * */
    public function updFindOrga(){
        $id = 1;

        $orgaData = DB::table('orga_index')->find($id);

        if($orgaData){
            $updData = [
                'errno'     => 0,
                'msg'       => 'ok',
                'orgaData'   => $orgaData
            ];
        }else{
            $updData = [
                'errno'     => 1,
                'msg'       => 'false'
            ];
        }

        echo json_encode($updData);
    }

    /*
     *  机构指标修改
     * */
    public function editOrga(){

        $id = 1;

        $orgaData = [
            'orga_name'         => Str::random(8),
            'is_comparison'     => 0,
            'orga_unit'         => 'L',
            'upper_limit'       => mt_rand(0,800),
            'lower_limit'       => mt_rand(900,4000),
            'normal_message'    => Str::random(10),
            'high_message'      => Str::random(10),
            'low_message'       => Str::random(10),
            'belongs_orga'      => Str::random(6),
            'exam_id'           => mt_rand(1,5),
            'is_match'          => 1
        ];

        $res = DB::table('orga_index')->where(['id'=>$id])->update($orgaData);

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
        $id = 19;

        $res = DB::table('orga_index')->where(['id'=>$id])->update(['is_delete'=>1]);

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
        for($i=0;$i<20;$i++){
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
                'belongs_orga'      => Str::random(6),
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
