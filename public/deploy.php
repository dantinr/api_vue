<?php
    $cmd = "cd /www/vue_api && git pull";
    $log =  shell_exec($cmd);
    $data = date("Y-m-d H:i:s") . " >>>> " . $log . "\n\n";
    file_put_contents("deploy.log",$data);
