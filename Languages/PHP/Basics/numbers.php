<?php
    $radius = 4;
    $pi = 3.14;

    # Calculate area
    echo $pi * $radius**2;

    # BODMAS rule
    echo 2 * (6 + 9)/4;

    # Increment and Decrement operators
    echo $radius++.++$radius;
    echo $radius--.--$radius;

    # Shorthand operators
    $age =10;
    $age+=10;
    echo $age;
    $age-=10;

    # Floor and Ceil 
    echo floor($pi);
    echo ceil($pi);

    # Inbuilt value for PI
    echo pi();

    # There are many more methods available in the math library of PHP
    # Will cover later on
?>