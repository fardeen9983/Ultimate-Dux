# Catch exceptions and handle them
# Place the code possibly generating the exception in try block.
# Handle if any exception thrown in except block

# Input requires integers values only but is supplied with some other incompatible data
try:
    num = int(input("Enter integer"))
    print(num)
except:
    # This value will handle all exceptions
    print("Please enter integers only")

# Catch specific exceptions
try:
    num = int(input("Enter integer"))
    print(num / 0)
except ValueError:
    print("Please enter integers only")
# Except error variable
except ZeroDivisionError as err:
    print(err)
