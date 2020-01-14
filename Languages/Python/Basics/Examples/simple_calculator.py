# Simple calculator
n1 = float(input("Enter number 1 : "))
n2 = float(input("Enter number 2 : "))
op = input("Enter operator (+,-,/,*) : ")


def calc(n1, n2, op):
    if op == '+':
        return n1 + n2
    elif op == '-':
        return n1 - n2
    elif op == '*':
        return n1 * n2
    elif op == '/':
        return n1 / n2
    else:
        return "Invalid operation"


res = calc(n1, n2, op)
if res is str:
    print(res)
else:
    print("Result of operation ", n1, op, n2, " : ", res)
