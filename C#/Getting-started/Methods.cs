using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Getting_started
{
    class Methods
    {
        //Methods are subprogrmas (named collection of instructions) that can be called and executed any number of times in the programs
        //static keywords tells us that the class member can be accessed without creating an object of that class. Also inside a static method we can only access other static members

        //A method can be defined static (optional)
        //It has a return type i.e, the type of the data it returns(For null it is void)
        //A valid identifier (name of the function)
        //Argument list 
        //Method body

        //Method defination
        static void sayHi()
        {
            Console.WriteLine("Hi");
        }

        //A method which accepts parameters. This is also an example of function overloading where methods/functions of the same name are declared nut with different arguments
        //The correct version to be called depends on the type of arguments passed to it.
        static void sayHi(string msg)
        {
            
            Console.WriteLine("Hi " + msg);
        }

        //Methods which return a value
        //A simple method returning sum of two numbers
        static int sum(int a,int b)
        {
            return a + b;
        }
        static void Main(string[] args)
        {
            //A method is executed only when it is called
            sayHi();
            Console.WriteLine("Enter your name:");
            sayHi(Console.ReadLine());

            Console.WriteLine("Sum of 3,5 : " + sum(3, 5));
        }

    }
}
