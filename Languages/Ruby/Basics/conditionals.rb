# Conditionals

# IF statement : Takes a expression/boolean value
# Executes following code only if true

# Generate a random number between 0 and 10 (not included)
num = rand(10)

# Check if the number is even
if num % 2 == 0
  puts num.to_s + " is even"
end

# IF else
# else statement will execute another set of code if the condition is false and if block is not run

num = rand(100)
# Check if number is divisible by 11 or not
if num % 11 == 0
  puts num.to_s + " is divisible by 11"
else
  puts num.to_s + " is not divisible by 11"
end

# Combine conditions
# Using a combination of operators we can have a complex express

# Check if number is greater than 50 and divisible by 2
if num % 2 == 0 and num > 50
  puts "Condition satisfied"
else
  puts "Condition failed"
end

# If Else ladder
# Instead of just using one condition we can have a series of conditions executed after failure of one above
# This construct is called if else ladder

# Check fo divisiblity by 2, if not then 3, if not then 5
if num % 2 == 0
  puts num.to_s + " is divisible by 2"
elsif num % 3 == 0
  puts num.to_s + " is divisible by 3"
elsif num % 5 == 0
  puts num.to_s + " is divisible by 5"
else
  puts "Conditions failed"
end

# Case expressions
# Instead of comparing one variable for different values using a long if elsif ladder we can use case expressions
# It compares the variable/constant to a list of values
# When a match occurs, the corrsponding block of code is run

# A random day generator
day = rand(7) + 1
puts day

# Depending on the number above print the day
print "Today is "

case day
when 1
  puts "Monday"
when 2
  puts "Tuesday"
when 3
  puts "Wednesday"
when 4
  puts "Thursday"
when 5
  puts "Friday"
when 6
  puts "Saturday"
when 7
  puts "Sunday"
else
  puts "Invalid"
end
