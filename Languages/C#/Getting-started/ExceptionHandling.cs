using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Getting_started
{
    class ExceptionHandling
    {
        static void Main(string[] args)
        {
            //Exceptions are errors that are thrown at run time execution
            //This leads the program to crash which is not acceptable
            //Exception handling catches such exceptions and handles and resume code execution as if it never took place
            //There are many types of exceptions.

            //The code that may produce an exception is enclosed in a try block

            int res = -1;

            try
            {
                Console.WriteLine("Enter two numbers");
                int a = Convert.ToInt32(Console.ReadLine());
                int b = Convert.ToInt32(Console.ReadLine());

                //Perform division operation a/b. If b is 0 throw exceptions
                //Even if dont throw an exception manually, the program will do some but also it will crash in the process
                //Throwing an expection means we are throwing an object of a data type and any catch statement which are handling the object of same type will catch them
                if (b == 0) throw new DivideByZeroException();
                else
                {
                    res = a / b;
                    Console.WriteLine("Division result : " + (a / b));
                }
            } 
            
            //A try block has to be necessarily be followed a catch block that catches exceptions thrown from the try block and handles them
            //We can have more than one catch blocks to handle different exceptions
            catch(DivideByZeroException e)
            {
                Console.WriteLine("Dont divide by zero \n" + e);
            }
            catch(Exception e)
            {
                //The class Exception is the superclass for all exceptions and thus will catch all excptions and skip any catch statements below
                //It should be placed at the end after all other catch statements.
                Console.WriteLine(e);
               
            }
            //Followed by try and catch block comes an optional finally block that is executed whether or not an exception is raised.
            //It is generally used to free resources after use in try catch block even when exceptions are generated
            finally
            {
                Console.WriteLine("In the finally block");
            }

            //The following code will be executed normally whether an exception is thrown or not
            Console.WriteLine("Result : " + res);
        }
    }
}
