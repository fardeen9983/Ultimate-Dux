# Replicating or extending an array shape to make calculations
import numpy as np

# Tile operation will replicate a given array by column and rows
a = np.arange(0, 40, 10)
print("Replicate ", a, "3 times by row and once by column")
a = np.tile(a, (3, 1))
print("Result : \n", a)
print("Transposed array :\n", a.T)

# The other array
b = np.array([0, 1, 2])

# Perform addition on 4x3 and 1x3 mat
print("Result:\n", a.T + b)

# Expansion of array into higher dimension
a = np.arange(0, 40, 10)
# Make the vector into 4x1 matrix
a = a[:, np.newaxis]
print("New Matrix :\n", a)
print("Addition result :\n", a + b)
