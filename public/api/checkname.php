<?php
    $names = [
        "张三",
        "李四",
    ];

    if(in_array($_GET['name'],$names)){
        $response = [
            "errno" => 30001,
            "msg"   => "用户名已被占用"
        ];
    }else{
        $response = [
            "errno" => 0,
            "msg"   => "ok"
        ];
    }

    echo json_encode($response,JSON_UNESCAPED_UNICODE);
