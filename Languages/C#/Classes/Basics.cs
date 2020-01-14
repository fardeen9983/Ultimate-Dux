using System;
using System.Collections.Generic;
using System.Text;

namespace C_sharp_snippets.Classes
{

    //A class is a collection of methods and variables bundles together in a template i.e, class
    //To access these members we have to create an object of the class
    //The members are assigned visibility: public (Accessible to all the objects and non-class method),
    // private (cant be accessed anywhere other than class methods)

    //Book class
    class Book
    {
        //Member variables
        public string title, author;
        public int pages;

        //Static varaibles are accessible through the class name alone and dont need an object to be created and accessed through dot operator
        //Also they are shared by all the objects creates. Here the variable bookCount will keep track of books created by incrementing it whenever a Book object is created.
        public static int bookCount;

        //As private members of class cant be accessed directly by objects, so is the case for static memebers which can be accessed by static/non-static member functions
        //Also it is customary to have the name of constant fields in uppercase
        private static readonly int BOOK_MANAGER_ID = 899;

        //Constructor: It initialises the object of the Book class and is the method we call to get a new object
        //This is an empty constructor. It initialises the data members to some garbaage value
        public Book() { bookCount++; }
        //This is a parameterised constructor. It takes value for the data members

        public Book(string title, string author, int pages)
        {
            //this keyword refers to the instance of the Class being used
            this.author = author;
            this.title = title;
            this.pages = pages;

            bookCount++;
        }

        //This is a copy constructor which copies it's values from existing object of the same type
        public Book(Book b)
        {
            this.author = b.author;
            this.title = b.title;
            this.pages = b.pages;

            bookCount++;
        }

        //We can also generate a string equivalent of the class to describe it better
        public override string ToString()
        {
            return "Book details:\nAuthor : " + author + "\nTitle : " + title + "\nPages : " + pages;
        }

        //Define a static method to print the BOOK_MANAGER_ID
        public static int getBookManagerId()
        {
            return BOOK_MANAGER_ID;
        }
    }

    class Classes
    {
        static void Main(string[] args)
        {
            //Create objects of Book class
            Book book1 = new Book();
            Book book2 = new Book("Fairy tale","Me",200);
            Book book3 = new Book(book2);

            //We can access the public members of the object using the dot (.) operator
            book1.pages = 200;
            Console.WriteLine(book1.pages);
            Console.WriteLine(book3);
            
            Console.WriteLine("\nBooks count : " + Book.bookCount);

            Console.WriteLine("\nBook Manager ID : " + Book.getBookManagerId());
        }
    }
}
