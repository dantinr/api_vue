<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ComboController extends Controller
{
    //数据填充
    public function fillData(){
        $location = [
            "北京",
            "天津",
            "上海,广州",
            "深圳"
        ];
        $label = [
            "男性套餐",
            "女性套餐",
            "老年人套餐",
            "儿童套餐"
        ];
        $orgain = [
            "瑞兹",
            "三甲医院",
            "中山三院"
        ];

        $now = time();
        for($i=0;$i<5;$i++){
            $price = mt_rand(100000,1000000);
            $data = [
                'combo_id'      => 'TJXM'.Str::random(6),
                'combo_name'    => Str::random(8),
                'price'         => $price,
                'price_now'     => $price - 200,
                'location'      => $location[mt_rand(0,3)],
                'sold_num'      => mt_rand(0,888),
                'add_time'      => $now,
                'is_avaliable'  => 1,
                'combo_label'   => $label[mt_rand(0,3)],
                'clos_time'     => $now+172800,
                'suit_orga'     => $orgain[mt_rand(0,2)],
                'branch_orga'   => '机构一',
                'combo_present' => '60岁以上的女性长者，为相关科室诊断提供重要依据',
                'combo_rule'    => '1、请至少提前一天预定；2、线上预约完后，体检日拿身份证到医院前台等级即可开始体检；',
                'combo_form'    => '肾功三项、肝功三项',
                'is_delete'     => 0,
            ];

            echo DB::table("combo")->insertGetId($data);
            echo '</br>';
        }
    }

    //测试
    public function test()
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

    //生成套餐ID
    private function generateComboId()
    {
        return "TJ-". Str::random(8);
    }

    //添加数据
    public function addCombo()
    {

        //如果前端post的是 json字符串 就用 file_get_contents("php://input") 然后解码json json_decode

        //如果前端post的是 form-data 就用 $_POST接收
        $add_time = time();
        $data=json_decode(file_get_contents("php://input"),true);
        //print_r($data);die;
        $data['combo_id'] = $this->generateComboId();
        $data['add_time'] = $add_time;
        $data['is_delete'] = 0;
        $data['sold_num'] = 123;
        $data['is_avaliable'] = 1;
        $data['lable'] = 1;
        $data['branch_orga'] = 1;
        //print_r($data);die;

        $id = DB::table("combo")->insertGetId($data);
        echo $id;die;
        if($id){
            // TODO 添加成功
            $response = [
            "errno" => 0,
            "msg"   => "添加成功",
            "id"    => $id
        ];
        }else{
            // TODO 添加失败
            $response = [
                "errno" => 1,
                "msg"   => "添加失败",
                "id"    => $id
            ];
        }
            return $response;
    }

     //删除
    public function deleteCombo()
    {
        $id = $_GET['combo_id'];
        $res = DB::table("combo")->where(['combo_id'=>$id])->update(['is_delete'=>1]);
        if($res){
          // TODO 删除成功
          $response = [
            "errno" => 0,
            "msg"   => "删除成功",
            "id"    => $id
        ];
        }else{
            // TODO 删除失败
            $response = [
                "errno" => 1,
                "msg"   => "删除失败",
                "id"    => $id
            ];
        }
            return $response;

    }

    //更新数据
    public function editCombo()
    {
        $id = $_POST['combo_id'];
        $data=json_decode(file_get_contents("php://input"),true);
        $add_time = time();
        // $data['combo_id'] = $this->generateComboId();
        $data['add_time'] = $add_time;
        $data['is_delete'] = 0;
        $data['sold_num'] = 123;
        $data['is_avaliable'] = 1;

        $res = DB::table("combo")->where(['combo_id'=>$id])->update($data);
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

    //查询搜索数据
    public function combosearch()
    {
        $id = $_GET['combo_id'];
        $list = DB::table("combo")->where(['combo_id'=>$id])->get()->toArray();
        // var_dump($list);
        if($list){
            $data = [
            'errno' => 0,
            'msg'   => 'ok',
            'data'  => [
                    'list'  => $list
                ]
            ];

        }else{
            $data = [
                'errno' => 1,
                'msg'   => '无数据'
            ];
        }
        return json_encode($data);
    }

    //查询列表数据
    public function comboList(Request $request)
    {
        // $id = $_POST['id'];
        $size = $request->get('size');
        // $size = $_GET['pageMaxNumber'];
        // dd($size);
        $list = DB::table("combo")->paginate($size);
        if($list){
            $data = [
            'errno' => 0,
            'msg'   => 'ok',
            'data'  => [
                    'list'  => $list
                ]
            ];

        }else{
            $data = [
                'errno' => 1,
                'msg'   => '无数据'
            ];
        }
        return json_encode($data);

    }

    }
