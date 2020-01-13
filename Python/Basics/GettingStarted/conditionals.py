# if-else statements evaluate a condition and then execute one or other set of instructions

# simple comaparison
a, b = 10, 51
if a > b:
    print("a>b")
else:
    print("b>a")

# Conditional operators: and, or, not
is_tall = True
is_male = False
is_rich = False

if (is_male and is_rich) or (not (is_male and is_tall)):
    print("Accept")
else:
    print("Decline")

# if-else ladder
a = int(input("Enter number :"))
if a > 50:
    print("a>50")
elif a > 25:
    print("a>25")
else:
    print("Naah")


# Comparisons >=,<=,>,<,!=,==
def max_num(n1, n2, n3):
    if n1 >= n2 and n1 >= n3:
        return n1
    elif n2 >= n1 and n2 >= n3:
        return n2
    else:
        return n3


print("Maximum of 3,6,2 : ", max_num(3, 6, 2))
