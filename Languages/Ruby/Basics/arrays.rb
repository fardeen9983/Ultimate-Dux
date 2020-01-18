# Arrays

# Define an array and initialize with values
names = Array["Sher Khan", "Dumbo", "Bagheera", "Mowgli", "Doom Slayer"]
# Prints each element in different lines
puts names
# Prints entire array in standard format
print names

# We can mix all types of data in an array
mixed = Array[1, false, "Demo"]
puts "\n" + mixed.join(", ")

# We can also define an array without initally passing all values to it
temp = Array.new
# Empty array
puts temp
# Put elements
temp[0] = "hello"
temp[4] = "world"
# Fills in the missing indexes with blanks
puts temp.join(", ")

# Print a single element using index value . Index values begin from 0 to length -1
# Print 3rd element from start
puts names[2]
# Print last 2nd element from last. start from back using -ve index
puts names[-2]
# Print elements of a range
puts names[1, 3].join(", ")

# We can also cahnge calue at array index
puts "Before : " + names[0]
names[0] = "Aladin"
puts "After  : " + names[0]

# Find if array contains an element using include
puts "Contains 'Aladin' ? " + (names.include? "Aladin").to_s

# Sort an array based on it's values
# Trying to sort a mixed array will give error
puts names.sort().join(", ")

# Find the index of an element of array
puts "Index of 'Mowgli'  :  " + names.index("Mowgli").to_s

# Get the length of array
puts "Length : " + names.length.to_s
