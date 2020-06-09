<?php
    # A variable with global scope defined outside any code block {}
    # Can be accessed from anywhere in the same file
    $a =10;

    function demo()
    {
        # A variable with scope local to the function demo
        # Cant be accessed anywhere else, even if returned
        $b = 20;

        # A local variable with the same name as global one
        # Has higher priority tahn global one while it is in it's scope
        # So the global variable a(10) is hidden and all references made to a variable will point to a(40)
        $a = 40;

        # Still you can change the global variable, even if it is hidden by using global keyword.
        # But both global and local variable of same name cant exist in the same scope
        # So it's not possible here while a(40) is defined
    }

    function changeGlobal()
    {
        # Get access to global variable
        global $a;
        # Modify it
        $a =20;
    }

    function globalError()
    {
        # This will give an error because in the local scope, the function refers to its own version of variable
        # But it is not yet defined and the global variable is actually hidden. So ERROR
        echo $a;
    }

    function printAge($age)
    {
        # Variables defined in fucntion parameter list are by deafult in local scope
        echo $age;
    }

    /* Passing the globa variable
        Even though we can pass around the global variables to some function, but the function will actually store their value in a local instance
        Changing that local instance will not change the actual global version

        This can however be achieved if we pass the refernce to the global varibale and not simply its value
        In that case any changes made to the variable refernce will reflect in the global version
    */

    $age = 10;

    function callByValue($age)
    {
        $age = 40;
        echo $age."<br>";
    }

    /* & symol denotes that we are passing the refernce to a variable and not simply it's value.
        A reference is simply an alias to an existing objects. So if you refer the same variable by different alias, they will still point to he same one.
        Changing one will also change the actual one and reflect it to all other refernces
    */
    function callByReference(&$val)
    {
        $val = 40;
        echo $val."<br>";
    }

    # No changes to global $age
    callByValue($age);
    # Actual changes to global $age
    callByReference($age);

?>