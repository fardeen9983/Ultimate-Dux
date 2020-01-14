"""
Sets are mutable unordered collection of items
Elements of a set are not indexed. So set[i] wont work
It is possible to perform set operations like union, intersection, etc on it
Sets are defined using { }
Sets are mutable but unhashable and thus can't be used for dictionary keys, but Frozen sets can be used
"""

setA = {1, 2, 3}
print(setA)

# Sets dont allow duplicate values
setB = {1, 2, 3, 1, 4, 2}
print(setB)

# We can convert lists into sets using the set() constructor
list = [1, 5, 2, 67, 3, 1, 0]
setL = set(list)
print(setL)

# The same can be done tuples as well
tuple = (3, 5, 2, 67, 7, 2)
setT = set(tuple)
print(tuple)

# An empty set
setE = set()
print(setE, type(setE))

# Adding elements to the set : only primitive types
set = {1, 2, 3}
set.add(2)
set.add("dfs")
print(set)

# Update set with any iterable type and no of elements
set.update([5, 6, 7], (7, 8), {8, 9, 10})
print(set)

# Remove element
set.remove('dfs')
print(set)

# Discard a value
set.discard('dfs')
print(set)

# Difference between remove and discard is that remove raises an error if element to be deleted is not present
# While discard does no such thing

# pop method removes random elements
set.pop()
print(set)

# Remove all elements from set
setA.clear()
print(setA)

# Set Operations

# Union operators
setA, setB = {1, 2, 3}, {3, 4, 5}
print(setA | setB)
print(setA.union(setB))

# Intersection of sets
print(setA & setB)
print(setA.intersection(setB))

# Set difference
print(setA - setB)
print(setB - setA)
print(setA.difference(setB))

# Symmetric difference
print(setA ^ setB)
print(setA.symmetric_difference(setB))

# Find if a given set is a subset of another set
setC = {1, 2}
setD = {5, 4}
print(setA.issubset(setC))
print(setC.issubset(setA))
print(setD.issubset(setB))
print(setB.issubset(setD))

"""
Frozen sets : They are immutable sets
Created by frozenset()
They can also be used as keys for a dictionary
They support all the set operations
"""

set = frozenset([5, 3, 6, 7])
print(set)
# set.add(5) Not allowed
