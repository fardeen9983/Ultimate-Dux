# User interaction
# Wait for user to provide some input through console input
# gets is the function which takes input from user and returns it in a variable
# Default user input type is string

puts "Enter a number : "
num = gets.to_i
puts "You entered the number : " + num.to_s

# Addition example
puts "Enter two numbers : "
num1 = gets.to_f
num2 = gets.to_f
puts "Addition result : " + (num1+num2).to_s