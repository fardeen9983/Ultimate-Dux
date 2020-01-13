n = int(input())
for i in range(0, n):
    k = input().split(" ")
    if len(k) == 3:
        a, b, c = float(k[0]), float(k[1]), float(k[2])
        print(a, b, c)
        res = 0
        if a > b and a > c:
            if b > c:
                res = b
            else:
                res = c
        elif b > a and b > c:
            if a > c:
                res = a
            else:
                res = c
        elif c > a and c > b:
            if b > a:
                res = b
            else:
                res = a
        print(res)
