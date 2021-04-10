<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LiweiController extends Controller
{
    public function test(){
        echo __METHOD__;
    }

    public function test2(){
        echo '<pre>';print_r($_POST);echo '</pre>';

        $data = json_decode(file_get_contents("php://input"), true);
        echo '<pre>';print_r($data);echo '</pre>';


    }
}
