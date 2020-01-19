# Classes in OOP
# Classes are defined using the "class" keyword
# It contains either variables or methods or both and are grouped together and accessible through instances of class (an object)

# A simple class defination for details about a Book
class Book
  # Expose getter and setter
  attr_accessor :title, :author, :pages

  # Constructor of the class - always called when creating new objects
  def initialize
    puts "Creating new book"
  end
end

# Creating an objet of the class using the class name and new keyword
book = Book.new()
# Set variables
book.title = "My Book"
book.author = "FK"
book.pages = 100

# Read the values
puts "Book details"
puts "Title : #{book.title}, Auther : #{book.author}, Pages : #{book.pages}"

class Book2
  # Expose getter only, use constructor for setter
  attr_reader :title, :author, :pages
  # We cannot create multiple constructors
  def initialize(title, author, pages)
    # To access class attribute we use @ notation with their name
    @title = title
    @author = author
    @pages = pages
  end
end

# Create book with constructor parameters
book = Book2.new("My Book", "FK", 100)

# Read the values
puts "Book details"
puts "Title : #{book.title}, Auther : #{book.author}, Pages : #{book.pages}"

# Class methods
class Book3
  # Expose getter only, use constructor for setter
  attr_reader :title, :author, :pages
  # We cannot create multiple constructors
  def initialize(title, author, pages)
    # To access class attribute we use @ notation with their name
    @title = title
    @author = author
    @pages = pages
  end

  # Define method to check how long the book is
  def check_type_by_pages
    if @pages > 300
      return "Long reading"
    elsif @pages > 100
      return "Medium reading"
    else
      return "Short reading"
    end
  end
end

book = Book3.new("My Book", "FK", 100)
# Call object method using dot operator
puts "Book type : #{book.check_type_by_pages}"

