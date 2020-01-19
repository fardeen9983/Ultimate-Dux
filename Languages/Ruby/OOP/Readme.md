# Object Oriented Programming

Ruby is an Object oriented language so it implements the popular OOP features:

1. Abstraction
2. Polymorphism
3. Inheritance
4. Encapsulation

> Note : We are not going into detail about these concepts. YOu can easily look them up somewhere else.

Most important part of OOP in programming is the concept of classes. So far we have written variables and some functions which modify or use their data.

## Class

Now OOP presents us with **Class** which is a custom data structure (We define it) where all the variables and the methods (aka functions) that directly deal with them are placed together and we do it such way that variables of the class are only accessible through the methods (optional actually)

So we can think of class as a blueprint defining what variables and methods it should have. A class itself is nothing by it's own. We instead create an instance of it called an **object**, much like creating a real thing from a blueprint.

So now the class we have created becomes a custom type we can use to create as many objects as we want.

To access the properties (methods and variable) of an object we use the dot (.) operator.

By default we cannot access variables of a class from outside the object without using a method of the class. To tackle this we can create class methods for each varibale that too for reading and writing separately
For reading the methods are called **getter** as they get the variable for us and for writing the variable values we have **setters**

But Ruby provides and easier and simpler way to expose member variables and define the the getters and setters for them by itself

1. **attr_accesor** :var1, :var2, ..

   This construct will essentially take a list of variables of a calss we want to expose and it will by itself create getter and setter for each of them.

2. **attr_reader** :var1, :var2, ..

   If we only want to expose the getters to read values of variable we define them with **attr_reader**

3. **attr_writer** :var1, :var2, ..

   Similiar to attr_reader but used only for changing values of exposed variables. Doesn't allow reading operation

Once we have defined aall the attributes of a class we can create an nobject and assign values to them all one by one. This approach is not recommended. Instead we can use a constructor, which we already use when creating object using new keyword.

Now when we create a new object we can pass all the values of the varaibles as parameters to the special function "constructor" and it will set initial values to all those variables so we dont have to do it.

The name of the constructor method is by default set to "initialize". it is defined itself if we dont create one. It can optionally take paramters. But beware that we can have only one constructor (initialize method) for a class

## Inheritence

In OOP, code reusability is implemented via the concept of inheritance where all exposed members of a class (variables and methods) are put together in a new class along with some new optional added features not found in the previous class. This gives an idea of inheriting already writen code, thus boosting code reusability. Also this way allows the different implementations of the same class.

For inheritance in ruby, we first need an actual parent/super/base class from which we will create a new sub/derived/inherited class. We can create the new class with new memebers not found in parent class or we can keep things unchanged

This is done through the **<** operator

```rb
class Parent
    # Some members
end

class Child < Parent
    # New members
end
```

## Reference

1. [Ruby Inheritance](http://rubylearning.com/satishtalim/ruby_inheritance.html)
