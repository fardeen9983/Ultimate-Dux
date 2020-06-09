<?php

    /*
    Conditionals are closely realted to BOolean
    That is because most of the conditions are expressions that evaluate to true or false.
    Which are the two boolean values
    */

    /* A simple price comparison using If
    If Statements that a condition or a combination of them and check if the final value is 1/true/Non-Null or 0/false/Null
    If the result is true then the immediate line/block of code follwoing the If statement will be executed.
    If false then the same code will be skipped
    */
    $price = 30;
    if ($price > 25) {
        echo "Condition met";
    }

    /* IF ELSE example
    On the another hand we can use else statements to handle situations when the if statement returns false.
    It will execute another set of code only if the if statement is false and skipped.
    Note : Single line codes dont need to be enclosed in {} brackets.
    */

    if ($price > 25) 
        echo "Expensive";
    else 
        echo "Cheap";
    

    /* IF ELSE Ladder
    Taking it to the next level we can multiple if else conditions creating a ladder like structure
    If one condition is not met it is compared to the other and the process is repeated until the end
    The final else staement for when all comparisons fail can be skipped too
    Note. There is no space between else and if when they appear together
    */

    
    if ($price > 25) 
        echo "Expensive";
    elseif ($price > 15)
        echo "Affordable";
    else 
        echo "Cheap";

    /* Multiple conditions in same statement
    Combining a host of logical (&&, ||, !, and, or, xor) and relational operators (>,<,==,!=,>=,<=, <>,<=>),
    we can create a complicated conditon
    */

    if( ($price > 20 or $price < 30) && ($price % 2 ==0))
        echo "Price is between 20 and 30, is divisible by 2";
    

    /* Switch statements
    Other popular conditional construct is the Switch statement. 
    Sometimes we need to compare the value of a variable against a list of values
    And for each match we find we want a different block of code to execude.
    This is where switch statements come in handy. 
    */

    $option = 3;

    # An example in IF ELSE Ladder
    if($option == 1)
        echo "option 1";
    else if($option == 2)
        echo "option 2";
    else if($option == 3)
        echo "option 3";
    else if($option == 4)
        echo "option 5";
    else 
        echo "invalid option";

    # Now the above statements are totally but a bit too verbose. 
    # We can do it in a better way using switch

    switch($option){
        case 1: echo "option 1"; 
                break;
        case 2: echo "option 2"; 
                break;
        case 3: echo "option 3"; 
                break;
        case 4: echo "option 4"; 
                break;
        default : echo "invalid option";
    }   
    
    /* Switch basics
    So we pass a single variable, not an expression in switch statement
    It's value is compared to a number of cases and whichever case matches it's corresponding code is executed
    Else we have the default case (optional) for when no cases match
    Also the break statement is there to signify the end of a case's code block
    Without the break staement, case 1 if selected will also select all cases below.
    This is called fallthrough phenomena 
    */

?>
