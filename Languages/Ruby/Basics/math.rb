# Numbers and math oprations in Ruby

# Basic arithmetic operations
puts "Addition        : 5 + 7  = " + (5 + 7).to_s
puts "Subtraction     : 5 - 7  = " + (5 - 7).to_s
puts "Multiplication  : 5 * 7  = " + (5 * 7).to_s
puts "Division        : 5 / 7  = " + (5 / 7).to_s
puts "Modulo          : 5 % 7  = " + (5 % 7).to_s
puts "Exponent        : 5 ^ 7  = " + (5 ** 7).to_s

# You can perform all above operations with floating point numbers as well.
# We can also mix both types together but the final result will always be the larger type

puts "\n7 / 5.0 = " + (7 / 5.0).to_s

# Math functions

# Absolute values
val = -3.25
puts "\nAbsoulte value of " + val.to_s + " : " + val.abs().to_s

# Rounding off
puts "\nRounded off value of " + val.to_s + " : " + val.round().to_s

# Ceil and Floor operation
puts "\nCeil value of " + val.to_s + " : " + val.ceil().to_s
puts "\nFloor value of " + val.to_s + " : " + val.floor().to_s

# Math is a class in Ruby (OOP concept) in  a package of the same name and has a number of sophisticated methods available
val = 36
# Square root
puts "\nSquare root of " + val.to_s + " : " + Math.sqrt(val).to_s

# Log operation
puts "\nLog of " + val.to_s + " : " + Math.log(val).to_s
