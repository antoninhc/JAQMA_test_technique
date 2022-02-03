<?php

$T = [10, 20, 40, 13, -2];

function indexMax($array){
    $max = null;
    $max_index = null;

    foreach ($array as $index => $value){
        if(is_null($max) || $max < $value){
            $max = $value;
            $max_index = $index;
        }
    }

    return $max_index;
}

echo indexMax($T) . PHP_EOL;
