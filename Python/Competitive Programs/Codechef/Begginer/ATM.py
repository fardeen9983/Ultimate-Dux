if __name__ == "__main":
    need, amt = float(input()), float(input())

    if need < amt:
        amt -= (0.5 + need)
        print(amt)
