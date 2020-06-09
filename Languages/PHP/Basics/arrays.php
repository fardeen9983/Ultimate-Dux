<?php
    # indexed arrays
    $people = ['Shyam','Ryam','Bhua'];
    echo $people[1];
    # Another way
    $names = array('Harry','James','Snape');
    echo $names[0];
    # Numeric array
    $age = [10,20,30];
    
    /* cant print the whole array using echo. Wont work:
    echo $age;
    Use print_r function to print readable version of variables
    */
    print_r($age);

    # Reassignment
    $age[1]= 25;
    print_r($age);

    # Add new array
    $age[] = 40;
    array_push($age, 50);
    print_r($age);

    # Get length of array
    echo count($age);

    # merge arrays
    $peopleNames = array_merge($people, $names);
    print_r($peopleNames);



    # Associate arrays : uses keys for indexes
    $val = ['one'=>1,'two'=>2,'three'=>3];
    echo $val['two'];
    print_r($val);

    $val2 = array('one'=>1,'two'=>2,'three'=>3);
    print_r($val2);

    # Add elements
    $val['four'] = 4;

    # same methods for count, merge, etc


    /* Multidimensional arrays
    * Basically are a collection of single dimensional arrays of n order
    * We can have a n-dimensional array
    */

    $students = [
        ['Fardeen',21,'IT'],
        ['Mihir',20,'Mech'] ,
        ['Kaiwalya',21,'EC']
    ];
    print_r($students);

    print_r($students[0]);
    echo $students[0][1];

    # Combining associate and multidimensional arrays
    $students = [
        ['name'=>'Fardeen','age'=>21,'dept'=>'IT'],
        ['name'=>'Mihir','age'=>20,'dept'=>'Mech'] ,
    ];

    echo $students[0]['name'];

    # Adding an entry
    $students[] = ['name'=>'Kaiwalya','age'=>21,'dept'=>'EC'];
    array_push($students, ['name'=>'Kaiwalya','age'=>21,'dept'=>'EC']);


    # Remove last element
    $kai = array_pop($students);
    print_r($kai);
?>