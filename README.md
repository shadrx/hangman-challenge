# hangman-challenge
Make Hangman in Ruby. A good challenge for beginner-intermediate devs.

Assumed knowledge:

  * Basic understanding of the terminal (bash/cmd)
  * Some knowledge of Ruby and programming concepts (variables, arrays, loops, if/else, etc)
  * Basic understanding of git (enough to clone this repo)

**If anything in that list above is totally foreign to you, fear not! You can either try your hand at the guessing game challenge, or pair program with someone who has more experience. If in doubt, ask for someone to help you on Slack.**

Our end goal in this challenge is to create Hangman on the command line. With any software we make, it's best if we understand what our end product is before we begin.

We want to break this challenge into achievable iterations.

Iteration 1 (displaying the word initially):

We should print out an underscore for each letter in the word to guess.  For example, if the word to guess was "art", we should display this to the user:

`Word to guess: _ _ _`


Iteration 2 (guessing and lives):

The user should start out with 7 lives.

We should ask the user to guess a letter.

If the letter they guess is in our word, we should reveal it.

If it's not, they should lose a life.

We should display their lives to them before each guess.


Iteration 3 (winning and losing):

If the user guesses all the letters in a word, they should be told they've won the game, and the program should end.

If the user has no lives remaining, they should be informed they've been hung and the program should exit.

Iteration 4 (make it pretty):

It's important for our programs to have a quality user interface. As such, our program should display a text based view of hangman.
