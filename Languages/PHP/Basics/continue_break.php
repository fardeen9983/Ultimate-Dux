<?php

    /* Continue keyword
    Allow you to skip an iteration and move to the next one in a loop without executing the remaining loop body
    */

    $num = [11,23,35,42,68,32];
    # Print only those numbers from above array which are divisible by 2

    foreach ($val as $num) {
        if ($val%2 !=0) {
            continue;
        }

        echo $val."&nbsp,";
    }

    # Note : The same output can be achieved via if else conditions


    /* Break keyword
    This allows you to jump out of the closest enclosing loop we are in
    */

    $num = [12,34,89,34];
    # Print all the numbers in the array but only until you find an odd number

    for ($i = 0; $i < count($num); $i++) {
        if ($num[$i] % 2 != 0) {
            break;
        }

        echo $num[$i]."&nbsp,";
    }
?>