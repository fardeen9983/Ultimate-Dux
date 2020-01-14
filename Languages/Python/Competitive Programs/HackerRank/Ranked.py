#!/bin/python3


#
# Complete the 'numofPrizes' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER k
#  2. INTEGER_ARRAY marks
#

def numofPrizes(k, marks):
    if 0 in marks:
        marks.remove(0)
    marks.sort(reverse=True)
    temp = set(marks)
    rank = [(x, marks.count(x)) for x in temp]
    rank.sort(reverse=True)
    res = 0
    for i in rank:
        if rank.index(i) >= k:
            break
        res += i[1]

    return res


if __name__ == '__main__':

    k = int(input().strip())

    marks_count = int(input().strip())

    marks = []

    for _ in range(marks_count):
        marks_item = int(input().strip())
        marks.append(marks_item)

    result = numofPrizes(k, marks)
