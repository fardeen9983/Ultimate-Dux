n = int(input())
while n != 0:
    k = list(map(int, input().split(" ")))
    ans = [k.index(i) + 1 for i in range(1, n + 1)]
    if k == ans:
        print("ambiguous")
    else:
        print("not ambiguous")
    n = int(input())
