<?php
    /* Functions in PHP
    They are blocks of code that are named and can be supplied with input parameters ang optionally give some outpu
    And they can be called/invoked using those name followed by ( ). This can also include a list of parameters it can work with
    */

    # Function to print something
    function printSomething()
    {
        echo "Something <br>";
    }

    # Call the above function
    printSomething();
    printSomething();

    # Nested functions - Functions within functions
    function printNew()
    {
        echo "New <br>";
        # Nested function call
        printSomething();
    }

    # Calling the nested function
    printNew();


    /* Passing parameters and default values
        We can write our functions to take a number of arguments and also assign them some default values.
        So, even if dont pass our own values for the arguments, the function will use the default value instead
    
       Returning values
        In the print something functions we did some operation but didnt return an output to the calling code.
        It is an optional feature. We can decide whether we want to return some values. It entirely depends on the nature of the function
    */

    # Function to add two numbers
    function add($num1, $num2)
    {
        return $num1 + $num2;
    }

    # Wer can also call functions within echo
    echo add(1.5, 3);

    # Using default values : Function to multiply a number by a factor (defuault: 2)
    function multiplyByFactor($num, $factor = 2)
    {
        return $num * $factor;
    }

    # Call with all params
    echo multiplyByFactor(3, 5);
    # Call with default values
    $result = multiplyByFactor(5);
    echo $result;
?>
