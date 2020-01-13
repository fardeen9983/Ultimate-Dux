"""
A module in python is reusable python code that can be imported into another python file,
so as to make use of all the functions, classes, variable, etc defined in the module
"""
import random

PI = 3.147


def incr(x):
    return x + 1


def roll_dice(x):
    return random.randint(1, x)
