'''Manipulating Strings'''

# Print a string
string = "My name is Khan"
print(string)

# Convert to lowercase and uppercase
lower = string.lower()
print(lower, "  ", string.upper())

# Check the case
print(lower.islower(), "  ", string.isupper(), "  ", string.upper().isupper())

# Length of string
print(len(string), "  ", string.__len__())

# Access characters of string at an index using square brackets
print(string[6])  # Prints e

# Find the index of particular character if present in the string, returns error if not found (ValueErr or)
print(string.index('M'), " ", string.index("Khan"))

# Replace a substring or character
print(string.replace('My', 'Your'))

# Convert one data type to string
num = 5
# This is not allowed
# print("Value of num: " + num)
# This is allowed though
print(num)
print("Value of num: " + str(num))
