using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Collections
{
    class Arrays
    {
        static void Main(string[] args)
        {
            //Arrays are collections of vaiables of same type, indexed and seperated by commas 
            //Declaration : Type [] name;

            //Integer array
            int[] nums = { 1, 3, 4, 5, 7, 89 };

            //Access array elements by index
            Console.WriteLine(nums[0]);

            //Modify array elements
            nums[2] = 54;

            //Dynamic initialization of array
            string[] names = new string[4];
            names[0] = "hey";


            //2-D arrays: An array of arrays
            //Definition : Put a comma between braces
            //Each subarray has to have the same number of elements
            int[,] grid = {
                { 0,1,2,3},
                { 4,5,6,7},
                { 8,9,10,11}
            };
            //Dynamic definiton
            int[,] array = new int[2, 3];

            //Accessing 2D array elements
            Console.WriteLine(grid[0, 1]);

        }
    }
}
