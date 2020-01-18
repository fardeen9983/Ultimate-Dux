# Strings are very iimportant part of any programming language that heavily interacts with the end user
# Strings in Ruby are declared by enclosing a sequence of characters in "" or ''. There is no differnce in that

first = "Fardeen"
last = "Khan"

# We can combine two strings together using the concatenation operator +
name = first + " " + last
puts name

# We can also put both the quotes in same string
name = "Fardeen's 'Repo'"
name = 'Fardeen\'s "Repo"'
name = "Fardeen's \"Repo\""

# There are many functions associated with String class which gives a lot of options for manipulation

# Change case of string
text = "This is sentence case"
puts text
# Chage to upper case
puts text.upcase()
# Change to lower case
puts text.downcase()

# String leading and trailing spaced
text = "     Ultimate - Dux    "
puts text.strip()

# Get the length of the string
text = "A not so long string"
puts "Length of string " + text.length().to_s

# Find if the string contains another string
# Use include extension and pass the search string and get a boolean value depicting ig the string is foun or not
text = "Find me if you can"
puts "Contains 'Find'  : " + (text.include? "Find").to_s  # Pints true - perfect substring
puts "Contains 'find'  : " + (text.include? "find").to_s  # Prints false - case sensitive
puts "Contains 'nope'  : " + (text.include? "nope").to_s  # Prints false - sting not found

# String indexes - We can access individual characters of a string by passing its index value
text = "Hello There"
# print 7th character (index values range : 0 to length -1)
puts "7th character : " + text[6]
# Print 3rd to 8th characters
puts "3rd to 8th characters : " + text[2, 7]

# Find the index value of the first occurence of a character if it exists in a string
text = "Normal String"
puts "Index of 'm'   : " + text.index("m").to_s  # Returns 3 : (4th position)
puts "Index of 'R'   : " + text.index("R").to_s  # Returns nothing : (case sensitive)
puts "Index of 'G'   : " + text.index("G").to_s  # Returns nothing : Not found
puts "Index of 'ring': " + text.index("ring").to_s  # Returns 9

# Note : you dont have to actually store all the strings in variables to access these methods
# You can directly use after the string ends
puts "Sentence case".upcase()
