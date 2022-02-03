<?php

$T1 = [19,12,18,10,12];

function sortArray($array){
  sort($array);
  return $array;
}

$T2 = sortArray($T1);

print_r($T1);
print_r($T2);