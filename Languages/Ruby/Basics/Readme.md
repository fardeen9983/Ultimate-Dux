# Ruby Basics

Here are all the coding examples fully documented to guide you through learning the syntax and basic concepts of the Ruby language.

To create a ruby program we write code in a file with extension **.rb**. The naming convention of the file is to have all words in lowercase connected with **\_** (underscore character).

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

  Data handled by ruby of available in various formats/types. Such as numeric values or text data, etc. To handle this fact, ruby gives a type to the variable depending on the value it;s hold. Any operation on the variable from then will take it's type information into consideration

  1. **int**

     Integers are whole numbers with no fractional values. They include negative numbers as well

  2. **float**

     These are basically numbers with a decimal part. These are more accuarate and have higher range of values than integers

  3. **Strings**

     Strings are a sequence of characters enclosed in double quotes (" ") or single quotes (' '), and are used to represent textual data

  4. **Booleans**

     In progarmming, we deal a lot with binary situations, where the result can be yes or no, which in ruby are repsented using values **true** and **false**

  5. **Nil**

     Nil is not a type but the lack of it. At times when we want to have a variable but with no data assign, we give it **nil**

## References

1. [Ruby Programming Language - Full Course](https://www.youtube.com/watch?v=t_ispmWmdjY)
