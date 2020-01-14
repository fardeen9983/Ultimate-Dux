"""
Aim :
Prompt the user to guess the secret value. If failed prompt again
Save all the guess
A pretty simple program
"""

secret = "Anthony"
guess = ""
guess_count = 0
guess_limit = 3
guess_outs = False

while guess != secret:
    if guess_count == guess_limit:
        guess_outs = True
        break
    guess = input("Guess the secret word\n")
    guess_count += 1

if guess_outs:
    print("Out of guesses")
else:
    print("You win")
