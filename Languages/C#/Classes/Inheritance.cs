using System;
using System.Collections.Generic;
using System.Text;
namespace C_sharp_snippets.Classes
{
    //Inheritance is the ability of extending the functionalityof an already existing class
    //The class being inherited is called the base class and the class inheriting it is called derived class
    //All non-private members of the base class become members of teh dervied class

    class Base
    {
        int a;
        public Base(int a)
        {
            this.a = a;
        }

        public void printA()
        {
            Console.WriteLine("A : " + a);
        }

    }


    //This is the class derived class Base
    class Derived : Base
    {
        //Now Derived has all the public and protected members of Base as well all the members it decalres for itself
        int b;

        //It is also necessary for a derived class to call the Base class constructor in their own constructor befre anything else
        //This can be achieved by the base keyword that allows access to base class members
        public Derived(int a,int b ) : base(a)
        {
            this.b = b;
        }

        public void printB()
        {
            Console.WriteLine("B : " + b);
        }
    }

    class Inheritance
    {
        static void Main(string[] args)
        {
            //Create Base object
            Base b = new Base(5);
            Derived d = new Derived(4, 7);

            //Inheritance allows a base class refernce to refer to a derived class object.
            //This prevents it from accessing any unique members of the derived class
            Base bd = new Derived(6, 10);

            //Base methods
            b.printA();

            //Derived methods
            d.printA();
            d.printB();
            bd.printA();
            //bd.printB(); Not allowed


        }
    }
}
