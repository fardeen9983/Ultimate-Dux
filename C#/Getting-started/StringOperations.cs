using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Getting_started
{
    class StringOperations
    {
        static void Main(String[] args) 
        {
            string name = "Fardeen Khan";

            //Get the length of the string
            Console.WriteLine("string length : " + name.Length);

            //Conver to upper and lowercase
            Console.WriteLine("Upper case : " + name.ToUpper() + "\nLower case : " + name.ToLower());

            //Check if the string contains a given substring
            Console.WriteLine("Enter a substring");
            string sub = Console.ReadLine();
            Console.WriteLine("name contains substring " + sub + " : " + name.Contains(sub));

            //string characters are indexed from 0...(length-1) and can be accessed by [ ]
            Console.WriteLine("Character at index 1 : " + name[1]);

            //Find the index of a character in  the string if present
            //The method Console.ReadKey gets the info about the key that is pressed and KeyChar returns it's character value
            Console.WriteLine("\nEnter character to find in string");
            char i = Console.ReadKey().KeyChar;
            //IndexOf returns the first occurence of the value passed to in the string and -1 if not found
            Console.WriteLine("\nIndex of " + i + " in string : " + name.IndexOf(i));
            Console.WriteLine("\nIndex of Khan in string : " + name.IndexOf("Khan"));


            //Grab a part of the string: substring
            Console.WriteLine("Substring of name strating from index 4 : " + name.Substring(4));
            Console.WriteLine("Substring of name strating of length 3 from index 4 : " + name.Substring(4,4));
            
        }
    }
}
