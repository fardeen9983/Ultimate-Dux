# Lists are mutable collection of any data type bounded by [ ] brackets

# empty list
list = []
print(list)

# Simple list of numbers
list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
print(list)

# mix up element type
mixed = ["String", 4.66, True, 34, "Hello brother", 56, 33, False, True]
print(mixed)

# Access element by index
print(mixed[2])
print(mixed[-1])  # To access from the end
print(mixed[4:])  # Get elements after index 4
print(mixed[:4])  # Get elements before index 4
print(mixed[2:6])  # Get elements between index 2 and 6 (excluding 6)

# Can modify list elements
mixed[2] = False
print(mixed)

# Functions
num = [34, 656, 7, 6, 7, 4, 2, 24, 567, 45, 435, 76, 657, 6, 83, 4, 23, 23, 12, 356, 57]
names = ['ABC', 'Rohan', 'Gokul', 'Duny']

# Extend - Add a list to the back of another
names.extend(num)
print(names)

# Append - add one element to list
num.append("Hey there")
num.append(45.090)
print(num)

# Insert : Insert an element at a given index of list
names = ['ABC', 'Rohan', 'Gokul', 'Duny']
names.insert(1, "XYZ")
print(names)
names.insert(2, ["a", 'b'])
print(names)

# remove - removes an element if present
names.remove(['a', 'b'])
print(names)

# clear - Empty the list
num.clear()
print(num)

# pop - remove last element from list]
names.pop()
print(names)

# index - Find the list index of entered ele
print(names.index("Gokul"))

# count - returns the count of ele intside list
names.append('ABC')
names.append('ABC')
names.append('ABC')
print("ABC count : ", names.count('ABC'))

# sort - Sort the contents of list
num = [34, 656, 7, 6, 7, 4, 2, 24, 567, 45, 435, 76, 657, 6, 83, 4, 23, 23, 12, 356, 57]
num.sort()
print(num)
names.sort()
print(names)

# reverse - Reverses the order of list
num = [34, 656, 7, 6, 7, 4, 2, 24, 567, 45, 435, 76, 657, 6, 83, 4, 23, 23, 12, 356, 57]
num.reverse()
print(num)

# copy - create a copy of the list and not a reference. Changes wont exist across both
temp = names  # A refernece
copy = names.copy()  # A copy
names.append("XYZ")
print(temp, '\n', copy)

# 2-D lists as arrays
mat = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
]
print(mat)

# Access values using row column index
print(mat[0][2])

# Print all values
for row in mat:
    for col in row:
        print(col, end=" ")
    print()
