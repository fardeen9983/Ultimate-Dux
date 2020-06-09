<?php
    $age = [10,20,30,40];
    # Loop through array using for loop
    # Iterate through the range of index values
    for ($i =0;$i< count($age);$i++) {
        echo $age[$i] . '<br>';
    }

    # For each loop.
    # Iterates through each element rather than it's index value
    foreach ($val as $age) {
        echo $val."<br>";
    }

    # While loop
    # ALways evaluates the condition first and then only executes the code
    $i =0;
    while ($i<count($age)) {
        echo $age[$i];
        $i++;
    }

    # Do-while loop
    # Executes the code atleast once, even before checking the condition
    $i = 0;
    do {
        echo $age[$i++];
    } while ($i<count($age));
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Loops</title>
</head>

<body>
    <h1> Loops </h1>
    <ul>
        <!-- You can use PHP loops in HTML tags to repeat elements -->
        <?php
            foreach ($val as $age) {
                echo "<li>".$val."</li>";
            }
        ?>
    </ul>
</body>

</html>