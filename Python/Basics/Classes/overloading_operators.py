# Overload operators on class objects

# Class that defines complex numbers
class Complex:

    def __init__(self, a=0.0, b=0.0):
        self.a = a
        self.b = b

    def __str__(self):
        return str(self.a) + " + " + str(self.b) + "i"

    # Override addition operator on complex objects
    def __add__(self, other):
        return Complex(self.a + other.a, self.b + other.b)


c1 = Complex(1, 3)
c2 = Complex(23.0, 3)
print("a =", c1, ", b = ", c2)
c3 = c1 + c2
print("c = a + b = ", c3)
