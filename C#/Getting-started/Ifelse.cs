using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Getting_started
{
    class Conditionals
    {
        static void Main(string[] args)
        {
            //Conditonal statements like if else allow the program to follow different program executions based on some conditions
            // These conditions are relational expressions

            //Find the biggest nummber of 3
            int a, b, c;
            Console.WriteLine("Enter 3 numbers: ");
            a = Convert.ToInt32(Console.ReadLine());
            b = Convert.ToInt32(Console.ReadLine());
            c = Convert.ToInt32(Console.ReadLine());

            int max = -1;
            if (a > b)
            {
                if (a > c) max = a;
                else max = c;
            }
            else
            {
                if (b > c) max = b;
                else max = c;
            }

            Console.WriteLine("Maximum of a,b,c : " + max);

            //Logical operators && (and) , || (or) , ! (not)
            if(5>4 && 5 > 6)
            {
                //Executed only when both LHS and RHS are true
                Console.WriteLine("Can never be executed");
            }

            if(5>4 || 5 > 6)
            {
                //Executed only when either of the LHS and RHS are true
                Console.WriteLine("5>4");
            }

            if(!(5 > 6))
            {
                //Executed only when the condition after ! is false
                Console.WriteLine("5 is not greater than 6");
            }
        }
    }
}
