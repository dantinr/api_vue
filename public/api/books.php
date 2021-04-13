<?php
    $books = [
        [
            "id"    => 1001,
            "name"  => "老人与海",
            "time"  => "2020-10-10"
        ],
        [
            "id"    => 1002,
            "name"  => "了不起的盖茨比",
            "time"  => "2020-11-10"
        ],
        [
            "id"    => 1003,
            "name"  => "挪威的森林",
            "time"  => "2020-12-10"
        ],
        [
            "id"    => 1004,
            "name"  => "北京法源寺",
            "time"  => "2020-12-12"
        ]
    ];

    return json_encode($books,JSON_UNESCAPED_UNICODE);
