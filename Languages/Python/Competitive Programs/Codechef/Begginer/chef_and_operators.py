n = int(input())
for i in range(0, n):
    k = input().split(" ")
    print(k)
    a, b = int(k[0]), int(k[1])
    if a > b:
        print(">")
    elif b > a:
        print("<")
    else:
        print("=")
n = int(input())
for i in range(0, n):
    k = input().split(" ")
    print(k)
    a, b = int(k[0]), int(k[1])
    if a > b:
        print(">")
    elif b > a:
        print("<")
    else:
        print("=")
