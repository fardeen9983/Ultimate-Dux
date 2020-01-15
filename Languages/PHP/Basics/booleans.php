<?php
    
    # prints 1
    echo true;
    # prints nothing
    echo false;
    # this is because they are printed as their string equivalent : "1" and ""

    # Comparisons using relation operators
    echo 5>10;
    echo 5==10;
    echo 5!=10;
    echo 5<=5;
    echo 10>4;

    # compare strings : alphabetical comparison
    echo 'hello' < 'yello';
    # upper < lower
    echo 'hello' < 'Hello';
    # Equality
    echo 'Hello' == "Hello";
    echo 'Hello' == "hello";

    # Loose comparison - checks for value
    echo 5 == '5'; # true
    # Strict comparison - checks for value and type
    echo 5 === '5'; # false
?>