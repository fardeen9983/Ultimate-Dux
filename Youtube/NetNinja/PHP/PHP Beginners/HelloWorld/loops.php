<?php
    $age = [10,20,30,40];
    # Loop through array using for
    for ($i =0;$i< count($age);$i++) {
        echo $age[$i] . '<br>';
    }

    # For each loop
    foreach ($val as $age) {
        echo $val."<br>";
    }

    # While loop
    $i =0;
    while ($i<count($age)) {
        echo $age[$i];
        $i++;
    }

    # Do-while loop
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
    <title>Document</title>
</head>

<body>
    <h1> Loops </h1>
    <ul>
        <?php
            foreach ($val as $age) {
                echo "<li>".$val."</li>";
            }
        ?>
    </ul>
</body>

</html>