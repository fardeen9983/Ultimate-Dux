using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Classes
{
    //Abstract keyword allows declaration but not the definition of functions in a class. 
    //It means that the function is incomplete, and due to which the class itself cannot be instantiated and has to be declared abstract
    //Any class taht derives an abstract has to have a solid implementation of the it's abstract methods or become abstract by itself

    abstract class Shape
    {
        protected double dim1;
        public abstract double getArea();
    }

    class Rectangle : Shape
    {
       protected double dim2;

       public Rectangle(double dim1, double dim2 )   { this.dim1 = dim1; this.dim2 = dim2; }

        public override double getArea()
        {
            return dim1 * dim2;
        }

    }

    class Square : Shape
    {
        public Square(double dim1) { this.dim1 = dim1;  }

        public override double getArea()
        {
            return dim1 * dim1;
        }
    }
    class Abstract
    {
        static void Main(string[] args)
        {
            //Shape shape = new Shape(); Not allowed to create abstract class objects
            //But we can use Shape class reference to access its sub class objects

            Shape rect = new Rectangle(5, 7.9);
            Shape square = new Square(6.2);

            Console.WriteLine("Square Area : " + square.getArea());
            Console.WriteLine("Rectangle Area : " + rect.getArea());

        }
    }
}
