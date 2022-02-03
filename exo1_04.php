<?php

$T1 = [10, 16, 0, 4];
$T2 =  [-40, 16, 17, 0];

function intersectArray($array1, $array2){
    $intersectArray = [];
    if(count($array1) > 0 && count($array2) > 0){
        foreach ($array1 as $value){
            if(in_array($value, $array2)) array_push($intersectArray, $value);
        }
    }
    return $intersectArray;
}

print_r(intersectArray($T1, $T2));