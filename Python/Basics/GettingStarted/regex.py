# Perform string operations using Regular Expressions

import re

# Create a pattern
pattern = re.compile('ell')

# Check for matching pattern
print(pattern.match('hello world'))
# Start from a index
print(pattern.match('hello world', 1))

# Printing regex result
result = pattern.match('hello world', 1)
print(result.span())

# Search for a pattern
print(pattern.search('hello you and mello you'))

# Advanced regex
string = 'hello world is awesome'
result = re.search(r'(.*) world (.*?) .*', string, re.M | re.I)

if result:
    print(result.group())
    print(result.group(1))
    print(result.group(2))

else:
    print("No result")
