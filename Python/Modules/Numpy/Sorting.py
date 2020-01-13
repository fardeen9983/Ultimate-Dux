import numpy as np

a = np.array([[7, 2, 9, 3], [3, 7, 1, 0], [5, 0, 2, 6]])
print("Before sorting a :\n", a)

# Sort array by columns
print("Sort by column a:\n", np.sort(a, axis=0))

a = np.array([[7, 2, 9, 3], [3, 7, 1, 0], [5, 0, 2, 6]])

# Sort array by rows
print("Sort by row a:\n", np.sort(a, axis=1))

# Sort by fancy indexing
# Simple array sorting but instead of returning the sorted array return the previous index of the sorted elements
# It does not actually sort the array but give the previous index of elements if they were sorted
a = np.arange(10, -2, -1)
print("Initial array :", a)
print("Previous index of sorted array : ", a.argsort())
# Get the sorted array
print("Sorted array :", a[a.argsort()])
