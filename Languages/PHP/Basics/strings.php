<?php
    $stringOne = 'My email is : ';
    $stringTwo = "fk@gmail.com";

    $name = "Fardeen";
    # Concatenate the strings to print together using . operator
    echo $stringOne . $stringTwo;

    echo "Hey my name ".$name;
    # wont work
    echo 'Hey, my name is $name';
    # works
    echo "Hey, my name is $name";

    # combine single and double quotes
    echo "Hey, my name is \"Fardeen\"";
    echo "Hey, my name is 'Fardeen'";
    echo 'Hey, my name is "Fardeen"';


    # Print characters
    echo $name[1];

    # String functions

    # String length
    echo strlen($name);

    # To upper case and lower case
    echo strtoupper($name);
    echo strtolower($name);

    /* Replace a portion with another if present
    * Parameters: String to be replaced, Replacement, String variable
    */
    echo str_replace('F', 'K', $name);

    # There are even more functions available for string manipulation
    # Will cover later on
?>