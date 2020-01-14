# Read and manipulate data from files
import numpy as np

# Read space seperated values (same type) from text files
data = np.loadtxt("data/petal_float.txt")
print("Petal data :", data.T)
# Each column represents a value type.
# So on transpose operation we get these values fixed in rows which can be extracted
sepal_len, sepal_width, petal_len, petal_width = data.T

print("Sepal lengths : ", sepal_len)
print("Sepal width : ", sepal_width)
print("Petal lengths : ", petal_len)
print("Petal width : ", petal_width)

# Print all rows but from 2nd column
print("Selective data : ", data[:, 1:])

# Calculate standard deviation by column
print("STD across Column :", data.std(axis=0))
