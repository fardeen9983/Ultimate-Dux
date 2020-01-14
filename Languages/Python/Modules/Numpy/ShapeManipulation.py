import numpy as np

# Flatten a multi-dimensional array to 1D array by appending all rows after one another
a = np.array([[[1, 2, 3], [4, 5, 6]], [[1, 2, 3], [6, 8, 2]]])
print("1D equiv :", a.ravel())
print("1D equiv on transpose :", a.T.ravel())

# Opposite of lattening : Reshape
# Convert 1D array to specified shape
a = a.ravel()
# Reshape to 2x3 shape
print(a.reshape(2, 2, 3))
# Reshape may or may not returns a copy of the array and not the reference

# Resize an array
a = np.arange(4)
print("Before resize :", a)
# After resize to 8. Extra elements set to 0
a.resize((8,))
print("Resize to shape(8,) :", a)

# Cannot resize an array after it is referenced by another variable
b = a
# a.resize() not allowed
