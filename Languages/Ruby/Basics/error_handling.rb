# Error handling
# begin - rescue blocks are used fro error handling in ruby
# All the code that may generate an error while exdecution are enclosed in the begin block
# The coressponding handling of the error generated in begin block is handled by code in rescue block

begin
  # Division by zero is not allowed
  num = 10 / 0
rescue
  puts "Division by zero not allowed"
end

# To handle multiple errors we can have multiple rescue blocks specifying the error they handle
digits = [1, 2, 3, 4, 5, 6, 7, 8, 9]
begin
  # Division by zero error
  num = 10 / 0
  # Index doesn't exist. Type error
  puts digits["one"]
  # Index out of range
  puts digits[11]

  # We can pass the error information into a variable
rescue ZeroDivisionError => e
  puts "Division by zero error : #{e}"
rescue TypeError
  puts "Invalid index value"
rescue IndexError
  puts "Index invalid"
rescue
  puts "Some other error"
end
