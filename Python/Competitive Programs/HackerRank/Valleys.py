#!/bin/python3

import os


# Complete the countingValleys function below.
def countingValleys(n, s):
    valley = 0
    curr = s[0]
    print(curr)
    counter = -1 if curr == 'D' else 1
    prev = -999
    for i in range(1, len(s)):
        prev = counter
        counter = counter + 1 if s[i] == 'U' else counter - 1
        if counter == 0 and curr == 'D':
            valley += 1
            counter = 0
            # print(valley)
            curr = s[i + 1]
    if prev + counter < 0:
        valley += 1
    return valley


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    s = input()

    result = countingValleys(n, s)

    fptr.write(str(result) + '\n')

    fptr.close()
