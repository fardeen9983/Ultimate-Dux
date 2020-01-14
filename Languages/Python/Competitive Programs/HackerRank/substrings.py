#!/bin/python3


#
# Complete the 'substringCalculator' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts STRING s as parameter.
#

def substringCalculator(s):
    # Write your code here
    temp = set()
    for i in range(0, len(s)):
        count = 0
        for j in range(i, len(s)):
            x = s[i:len(s) - count]
            if x != '':
                temp.add(x)
            count += 1
    print(len(temp))
    return len(temp)


if __name__ == '__main__':
    s = input()

    result = substringCalculator(s)
