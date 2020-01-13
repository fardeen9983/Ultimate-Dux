using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Getting_started
{
    class Loops
    {
        static void Main(string[] args)
        {
            //Loops are iterative statements that execute code in their body until a condition is satisfied or for a particular number of times

            //While loop: Runs for as long as the condition is true
            //It evaluates the condition first and if it is true then only executes it's body (entry controlled)
            int i = 0;
            while (i < 5)
            {
                Console.WriteLine(i++);
            }

            //do-while loops: They are similar to while loops but are exit controlled
            //They execute the body then check for the conditions.
            i = 0;
            do
            {
                Console.WriteLine(i++);
            } while (i < 5 && i> 0);

            //for loops: They use an loop variable and execute for a number of times based on the condition of the loop variable
            for(int j = 0; j<5; j++)
            {
                Console.WriteLine(j);
            }

            //foreach loops iterate over elements of the a collection like an array
            int [] arr = { 1,2,3,4,5,6,7,8,9,0};
            foreach (var k in arr)
            {
                Console.WriteLine(k);
            }
            

        }
    }    
}
