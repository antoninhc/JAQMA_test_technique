<?php

$T =  [10, 20, 13, 0, -2];

function countImpair($array){
    $count = 0;
    foreach ($array as $number){
        if ($number % 2 == 1 ){
            $count++;
        }
    }
    return $count;
}

echo countImpair($T) . PHP_EOL;