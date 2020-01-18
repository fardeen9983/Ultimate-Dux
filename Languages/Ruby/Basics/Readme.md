# Ruby Basics

Here are all the coding examples fully documented to guide you through learning the syntax and basic concepts of the Ruby language.

To create a ruby program we write code in a file with extension **.rb**. The naming convention of the file is to have all words in lowercase connected with **\_** (underscore character).

To run the ruby file on your terminal you can use the **ruby** command gained through installation of Ruby and pass the file name to it.

```bash
ruby file.rb
```

## Hello World

- **print**

  The first line of code we write is to print **Hello World** on the screen.

  ```rb
  print "Hello World"
  ```

  This syntax is very similar to Python2. There are no semicolons and no brackets.

- **puts**

  We have a similiar function to print, called **puts**. It does the same thing as prints but puts always prints a newline after it is done. So the output moves to the next line

  ```rb
  puts "Hello World"
  ```

## Variables

In programs we store data in variables which are named memory spaces. We can assign different values to them and access those values using the variable at any time. This way we get a caontainer like structure for holding and accessing our data.

- **Rules**

  1. Variable names can start with an alphabet or an underscore, not a digit.

  2. We can have as many digits and characters and underscrores after the first letter.

  3. There is officially no rule for the length of variable names

- **Data Types**

  Data handled by ruby of available in various formats/types. Such as numeric values or text data, etc. To handle this fact, ruby gives a type to the variable depending on the value it;s hold. Any operation on the variable from then will take it's type information into consideration.

  Also these types are actually represented by their seperate class defintion (OOP concept). So there are number of predefined methods that we can use with our variables if they hold the following fundamental types

  1. **int**

     Integers are whole numbers with no fractional values. They include negative numbers as well

  2. **float**

     These are basically numbers with a decimal part. These are more accuarate and have higher range of values than integers

  3. **Strings**

     Strings are a sequence of characters enclosed in double quotes (" ") or single quotes (' '), and are used to represent textual data.

     Also strings are more or the same as an array/list of characters. Hence using the good old [ ] and passing index value (Starting from one) we can get individual characters or range from the string

     For example

     ```rb
     text = "Hello there"

     # Print the whole string
     puts text

     # Print the 4th character from start
     puts text[3]
     ```

  4. **Booleans**

     In progarmming, we deal a lot with binary situations, where the result can be yes or no, which in ruby are repsented using values **true** and **false**

  5. **Nil**

     Nil is not a type but the lack of it. At times when we want to have a variable but with no data assign, we give it **nil**

- **Type Casting**

  By default we cannot mix together different data types as they are not compatible together implicitly. For Example, we cannot add an integer with a string or multiply a boolean with float variable.

  But what we can do is convert them to other types whenever possible, and by whenever we mean to say that all conversions are not possible. We cannot convert your name to a valid integer.

  For the purpose of type casting we have a set of methods we can apply on our variables. They return the converted value of the variable into another form but may return errors when incompatible.

## Functions

We sometimes have to write the same piece of code again and again throughout our code because we have to implement the same functionality some where else. It is acceptable to repeat the mundane task for a few number of times but when the scale of our project increases this way of cding is not achievable.

Hence we introduce functions. These are small blocks of code that are given a name and using that can be called and executed from anywhere and any number of time. They can take variables and input and return some output as well, but it's optional.

## User Input

Interacting with the a user is a very important aspect of programming. Whether that is too forward some information through **print** or instead ask for input from user and use that data for some operation.

So we basically print a msg guiding the user of what information is needed and wait for him/her to enter it. This is achieved through the **gets** function

## References

1. [Ruby Programming Language - Full Course](https://www.youtube.com/watch?v=t_ispmWmdjY)
