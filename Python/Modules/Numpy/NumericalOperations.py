# Various numerical operations to be performed on Numpy arrays
import numpy as np

# Arithmetic operations
a = np.array([1, 2, 3, 4, 5, 6])
print("a: ", a)
print("a+1 :", a + 1)
print("a-2 :", a - 2)
print("a*2 :", a * 2)
print("a/0.5 :", a / 0.5)
print("a//3 :", a // 3)
print("a^3 :", a ** 3)

b = np.ones(6) + 1
print("b: ", b)
print("a-b :", a - b)
print("a*b :", a * b)
print("a/b :", a / b)
print("a+b :", a + b)
print("a//b :", a // b)
print("a**b :", a ** b)

# Scalar product
print("a*a :", a.dot(a))
print("a*b :", a.dot(b))
print("b*a :", b.dot(a))

# Element by element Comparison
print("a == b : ", a == b)
print("a !> b : ", a != b)
print("a > b : ", a > b)

# Direct comparison
print("Is a == b : ", np.array_equal(a, b))

# Logical operations

a = np.array([1, 1, 0, 0], dtype=bool)
b = np.array([1, 0, 0, 1], dtype=bool)

print("a or b :", np.logical_or(a, b))
print("a and b :", np.logical_and(a, b))
print("a xor b :", np.logical_xor(a, b))
print("not a :", np.logical_not(a))

# Return True if all are true
print("All in a are True :", a.all())
# Return True if aof them are true
print("Any in a are True :", a.any())

# Complex operations
a = np.array([1, 2, 3, 4])
b = np.array([3, 4, 2, 1])
c = np.array([4, 2, 1, 3])

res = ((a <= b) & (b <= c)).any()
print("Result :", res)

# Transcendental functions
a = np.arange(1, 15)
print("sin(a) :", np.sin(a))
print("log(a) :", np.log(a))
print("exp(a) :", np.exp(a))

# Reduction operations

a = np.arange(15)
print("Sum of all elements of ", a, " = ", np.sum(a))

a = np.random.rand(3, 3)
print("Sum of columns on a =", np.sum(a, axis=1))
print("Sum of rows on a =", np.sum(a, axis=0))

a = np.arange(15)
print("Minimum in a :", np.min(a), ", index :", np.argmin(a))
print("Maximum in a :", a.max(), ", index :", a.argmax())

# Statistical operations

x = np.array([1, 2, 3, 4])
y = np.array([[1, 2, 3, 4], [2, 3, 4, 5]])

print("Mean(x) : ", np.mean(x))
print("Mean(y) : ", y.mean())

print("Median(x) : ", np.median(x))
print("Median(y) last axis(rows) :", np.median(y, axis=-1))

print("Standard Deviation of x :", np.std(x))
print("Standard Deviation of y :", y.std())
