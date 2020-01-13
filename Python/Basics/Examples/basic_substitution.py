# Replace all vowels with a character

def substitute(txt, target):
    temp = txt
    for letter in txt:
        if letter in 'AEIOUaeiou':
            if letter.isupper():
                temp = temp.replace(letter, target.upper())
            else:
                temp = temp.replace(letter, target)
    return temp


print("Transformed text : ", substitute(input("Enter text"), 'g'))
