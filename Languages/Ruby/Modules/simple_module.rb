# A module we can import for it's content
# Define this file to be a Ruby module
module Simple
  # Define all the functions, classes or other code that we want to export as a module
  name = "Fardeen"

  def add(num1, num2)
    return num1 + num2
  end
end

# Include the Simple module from simple_modules.rb
include Simple
# Access code from simple Module
puts "name : #{Simple.name}"
# THis wint be accessible like this using include outside this file. For that we need to use require
