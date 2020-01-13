# A function is a sub program that can be called any number of times in a program to do its bidding any time

# create a function with def keyword. It accepts a list of parametes which can be empty.
# Also code inside is indented. It may return a value

# Function to print something when it is called
def hi():
    print("Hi there")


# calling the function by its name and brackets
hi()


# Function with argument
def hi(name):
    print("Hi " + name)


hi("Khan")

# Function with return value
n1 = float(input("Enter num1 : "))


def cube(num):
    return pow(num, 3)


print("Cube of ", n1, " : ", cube(n1))


# find exponent
def exp(base, pow):
    res = 1
    for i in range(pow):
        res *= base
    return res


print("2^3 : ", exp(2, 3))
