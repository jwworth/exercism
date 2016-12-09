<?php

function distance($a, $b)
{
    if(strlen($a) != strlen($b)) {
        throw new InvalidArgumentException('DNA strands must be of equal length.');
    }

    $aLetters = str_split($a);
    $bLetters = str_split($b);
    $result   = 0;

    foreach($aLetters as $key => $aLetter) {
        if($bLetters[$key] != $aLetter) {
            ++$result;
        };
    };
    return $result;
}
