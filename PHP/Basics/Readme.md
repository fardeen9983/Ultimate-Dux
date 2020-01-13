# PHP Tutorial (& MySQL)

Hey gang, in this first PHP tutorial (with MySQL) I'll explain precisely why I'm creating this series as well as what you'll be making / learning as we progress. PHP is a server-side scripting language which can be used to create dynamic websites and is used all over the web today.

## Links

[Youtube Link](https://www.youtube.com/watch?v=pWG7ajC_OVo&list=PL4cUxeGkcC9gksOX3Kd9KPo-O68ncT05o), [Course files](https://www.youtube.com/redirect?q=https%3A%2F%2Fgithub.com%2Fiamshaunjp%2Fphp-mysql-tutorial&redir_token=9yrb5AY3tktZhygFn9oao4PAl9J8MTU3ODk0MjA2MEAxNTc4ODU1NjYw&event=video_description&v=pWG7ajC_OVo)

## Get started

PHP, an acronym for Hypertext Preprocessor, is a server-side scripting language that is highly compatible with HTML (the prime language on which the web is built)

Unlike HTML, CSS and JS which all run on the client's browser, PHP runs on the server on which the website is hosted thus enabling numerous features that are possible only to do so on the server-side.

PHP can manage sessions on the server, load dynamic web content and be embedded in the HTML files. Combined with AJAX and databases like MySQL, PHP can bring dynamic behaviour to static websites. PHP also has OOP features.

Though called a dead language, it is still prevalent in legacy workflows, and Laravel and Codeignitors are still some popular frameworks, a large number of websites still operate on it.

## Running PHP on your system

Now PHP, as described earlier, requires a server to run on. So for local PHP development, we need to set up a few software.

1. A local server
2. A database for storage

For windows, we can get all these in a single package called XAMPP, which contains an Apache server, a MySQL fork called MariaDB ad many other features like Perl language. It is available across all major platforms.

We can start any of the services on specific ports on our local computer and are accessible through the browser using a `localhost` or `127.0.0.1` followed by its specific port number. If you get an error, it simply means that the port to be used is already occupied and hence has to be changed in the services .ini (config) file.

The static pages served by the Apache server are stored in a folder `htdocs` in the xampp's installed directory.

## Hello World

To create a PHP file create a new file with `.php` extension and all the PHP code has to be enclosed in unique tags like this

```php
<?php

    # All your PHP code

?>
```

To print a string on to the string, we use the echo function:

```php
<?php
    echo "Hello World";
?>
```

Now it is also possible to embed HTML code in a PHP file and vice versa. We can also use values exchange from both the languages pretty quickly. The PHP files will return the HTML code with instructions to render it on the browser.

## Variables

We can create variables using the \$ notation. Variable types are automatically identified using the value they hold, so we don't need to provide them ourselves. Also, we can assign different types of values to the same variable.

It is important to note that we cannot use digits or special characters (exception: \_) as the first letter of the variable name (identifier). We can still use digits after that. Also, the convention is to use camel case, for example: `$firstName`.

As mentioned earlier, we can easily change the value assigned to a variable by reassignment. To avoid this, we can use the function `define(name, value)`, to declare constants, which cannot be changed once assigned. The convention is to keep constant identifiers as capital cases with words separated by an underscore, example: `FIRST_NAME`

```php

<?php
    define('AGE',30);
    $name = 'Fardeen'
    echo AGE.'  '.$name;
?>
```

## Strings

Strings are a sequence of characters enclose in `""` or `''`. They can be combined, searched for patterns, extract individual characters, etc. All these operations are called string manipulation.

Strings are treated as indexed array (starting from 0) of characters which then can be acquired using the [ ] operator on the string.

There are also a lot of inbuilt functions available with the strings.

## Numbers

Numbers are PHP can either be integers or floating-point numbers (with decimal values).

```php
<?php
    $int = 6;
    $float = 7.990;
?>
```

## Operators

|   Operation    | Operator |
| :------------: | :------: |
|    Addition    |    +     |
|  Subtraction   |    -     |
| Multiplication |    \*    |
|    Division    |    /     |
|     Modulo     |    %     |
|    Exponent    |   \*\*   |
|    Incremet    |    ++    |
|   Decrement    |    --    |

PHP follows BODMAS rule for the priority of operations in an expression

## Arrays

Arrays are collections of variables which can be accessed by a single named variable.

So there are 3 types of arrays :

1. Single dimensional arrays
2. Multidimensional arrays
3. Associate arrays

All three are indexed, the first two by numbers and last with string keys. But we can combine multidimensional and associate arrays as well.

## Loops

Loops allow us to repeat a set of instructions depending on a test condition.
In PHP, we have :

1. for loop
2. for each loop
3. while loop

## Booleans and Comparisons

Booleans are the fundamental types representing true or false in PHP. They are for comparison and are the final results of a relational expression or comparison.

## Conditions

Many a time in programming, we evaluate a condition or an expression to decide which course of action to go with forward. Conditionals in PHP allow us to implement this functionality by providing us concepts such as `switch` operator and `if-else` statements, ternary operator `?:`.