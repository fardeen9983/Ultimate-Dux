<?php
    # This is an example of comments.
    # Comments are ignored by the computer and are not executed
    # Single line comments begin with '#'
    /* Multi line comments start with '/*'
       And end with '
    */
    
    # Print on the screen
    echo "Hello World";
    # Declaring variables without type adn prefixed with "$" symbol
    $name = "Fardeen";
    # Defining constants
    define('AGE', 30);
?>

<!-- Embedding HTML code in PHP file. The opposite is also possible-->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Introduction to the Basics</title>
</head>

<body>
    <h1>
        <!-- Inline PHP code in HTML tags -->
        <?php echo "Hello from the HTML/PHP";?>
    </h1>
    <h1> Name : <?php echo $name; ?>
    </h1>
    <h1>Age : <?php echo AGE;?>
    </h1>
</body>

</html>
