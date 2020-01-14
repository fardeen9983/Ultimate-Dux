# Enter your code here. Read input from STDIN. Print output to STDOUT


def subs(txt, startswith):
    for I in range(len(txt)):
        for J in range(1, len(txt) - I + 1):
            if txt[I].lower() in startswith.lower():
                yield txt[I:I + J]


if __name__ == "__main__":
    lines = []
    for i in range(0, int(input())):
        lines.append(input())
    for i in subs("".join(lines), "#"):
        print(i)
