# Loops in pythonare used for repeating a set of instructions for a number of times

# 1. While loop - Runs until test condition evaluates to false
i = 1
while i < 100:
    print(i)
    i += 1
    # Python does not support ++/-- operators

# 2. For loop - it iterates over a collection or range of values and for each iteration performs some operation

# Print even numbers from 1 to 100
for i in range(1, 101):
    if i % 2 == 0:
        print(i)
"""
Range is function that returns values within a range excluding the right limit boundary value.
It has an optional start and stop value as well the step value (if -ve then move in reverse)
Otherwise default argument is that of the range . range(10) will give values 0-9 
It can also define the number to steps towards next value and if we want to iterate in reverse direction
"""

# Iterating through a list
list = [0, 'sdfsdf', 'dfdf', 3434.34, 5.0]
for i in list:
    print(i)

# Iterate over the characters of the string
for letter in "Anthony Gonzalwis":
    if letter.isupper():
        print(letter)
