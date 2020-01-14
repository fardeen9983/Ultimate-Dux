"""
Dictionaries are collection of key value pairs.
The keys are unique and fundamental type while the values can be of any type.
You can access any value stored in the dictionary using it's key
"""

# Create an empty dictionary : {}
dict = {}
print(dict)

# Dummy data init
dict = {0: "zero", 1.1: "One.One", "zero": 0}
print(dict)

# Access a value using key
print(dict[0], ",", dict["zero"])
# Or use the function get
print(dict.get(0), ",", dict.get('zero'))
# if invalid key is paased then None is returned. Or we can pass a default value for incorrect keys
print(dict.get(2, "invalid key"))

print(dict.values())
