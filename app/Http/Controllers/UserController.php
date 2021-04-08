<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function login()
    {
        //echo "<pre>";print_r($_POST);echo "</pre>";
        $json = file_get_contents("php://input");
        $user = json_decode($json,true);
        echo "<pre>";print_r($user);echo "</pre>";

    }
}
