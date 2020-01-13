using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Getting_started
{
    class Numbers
    {
        static void Main(string[] args)
        {
            //Arithmetic Operators : +, *, -, /, %
            int a = 5, b = 2;
            Console.WriteLine("Sum : " + (a + b));
            Console.WriteLine("Subtraction : " + (a - b));
            Console.WriteLine("Multiplication : " + (a * b));
            Console.WriteLine("Integer division : " + (a / b));
            Console.WriteLine("Decimal point division : " + (a / 2.0));
            Console.WriteLine("Increment and decrement operators : " + a++ + " , " + --b);

            //Math functions
            Console.WriteLine("Round op  : " + Math.Round(4.59));
            Console.WriteLine("Square root  : " + Math.Sqrt(4.59));
            Console.WriteLine("Exponent  : " + Math.Pow(4.59,4));
            Console.WriteLine("Absolute  : " + Math.Abs(-40.59));
            Console.WriteLine("Constant PI  : " + Math.PI);
            Console.WriteLine("Natural log  : " + Math.Log(45));
            Console.WriteLine("Floor  : " + Math.Floor(4.95));
            Console.WriteLine("Ceil  : " + Math.Ceiling(4.95));
            //Etc
            
        }
    }
}
