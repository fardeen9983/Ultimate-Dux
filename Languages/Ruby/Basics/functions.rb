# Functions
# Functions

# Define a function to print something
def printSomething
  puts "Something"
end

# Call the method
printSomething()

# Passing arguments to function
def add(a, b)
  puts a.to_s + " + " + b.to_s + " = " + (a + b).to_s
end

add(4, 6)

# Default values of parameters incase none are passed
def sayHello(name = "Karma")
    puts "Hello " + name.to_s
end

# With parameter
sayHello("Roberto")
# Without parameter
sayHello()

# Return some value
def cube(num=1)
    # Last line of function body is returned
    num*num
    4
    num*num*num
end

puts "Cube of 5 : " + cube(5).to_s

# Return keyword : Force which value to return
def sqaure(num=1)
    return "Square of " + num.to_s + " = " + (num*num).to_s
    num * num
end
puts sqaure(10)
