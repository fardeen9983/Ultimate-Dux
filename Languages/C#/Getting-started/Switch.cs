using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Getting_started
{
    class Switch
    {
        static void Main(string[] args)
        {
            //Switch statements take a constant as input and it checks it's value for a match against a set of cases of the same types
            //If a match is found then the code associated with that case is executed or the default case is executed if it is defined

            //Simple calculator with Switch
            Console.WriteLine("Enter two numbers");
            double a = Convert.ToDouble(Console.ReadLine()), b = Convert.ToDouble(Console.ReadLine()), res;
            Console.WriteLine("Enter operator : ( + , -, * , / , % )");
            char op = Console.ReadKey().KeyChar;
            res = -1;
            switch (op)
            {
                case '+': res = a + b; break;
                case '-': res = a - b; break;
                case '/': res = a / b; break;
                case '%': res = a % b; break;
                case '*': res = a * b; break;
                default : Console.WriteLine("Please enter valid operator"); break; 
            }

            Console.WriteLine("\nResult : " + res);
        }
    }
}
