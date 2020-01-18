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

  An empty **puts** statement will simply print a newline

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

## Conditionals

Many a time a decision we take depends upon some condition which can be simple comparison or the result of a complex operation.

Then that result is used to decide which course of action is to be followed next. So Ruby provides us with control statements that evaluates some expressions (our condition) down to the boolean values and execute one set of code depending on the value obtained

The control statements are:

1. **If Else**
2. **Case Expression**

## Loops

Now imagine a scenario where you have to input 10 different values in an array, add them all and print their sum. Now you could definitely use a function for this but the point is how will we take care of the repeating task i.e, the 10 inputs we have to take and the sum we need to calculate.

Now image that we have to do with not 10 but a 1000 numbers. And this is obviously going a very difficult path if we manually set to take that many inputs and add them.

Instead of that, we use a concept called loops. A programming contruct that repeats a piece of code again and again until a set condition is satisfied.

Types of loops in ruby

1. While loop

2. For loop

3. Do While loop

4. Until

## Functions

We sometimes have to write the same piece of code again and again throughout our code because we have to implement the same functionality some where else. It is acceptable to repeat the mundane task for a few number of times but when the scale of our project increases this way of cding is not achievable.

Hence we introduce functions. These are small blocks of code that are given a name and using that can be called and executed from anywhere and any number of time. They can take variables and input and return some output as well, but it's optional.

In ruby we define a function with the **def** and **end** keywords

```rb
def name
   # Function body
end
```

When we call the fucntion using it's name we get the function of the body executed

## User Input

Interacting with the a user is a very important aspect of programming. Whether that is too forward some information through **print** or instead ask for input from user and use that data for some operation.

So we basically print a msg guiding the user of what information is needed and wait for him/her to enter it. This is achieved through the **gets** function

## Arrays

Variables in ruby can store only one value, but we sometimes need to store multiple items which are meant to be stored together to maintain their relavance. Like storing heights of 10 people. We can definitely create 10 variables for this purpose each with a different name, but imagine doing the same for a 100s or 1000s of people.

You get the picture. But what if we can use just one name and an index value to refer to each of one these values. This is where **arrays** come

> Array is a data structure which is basically collection of same or different data type values which are refered using the same name

## Hash/Dicitionary

Hash is like arrays; another data structure where we store numerous values, but instead of using indexes to access them we give them unique keys.

Hence this also acts like a dictionary, where key value pairs are stored

## File I/O

Ruby has in-built features to read and write to file. We can read data from file as input and write data to files.

## References

1. [Ruby Programming Language - Full Course](https://www.youtube.com/watch?v=t_ispmWmdjY)
