# hangman-challenge
Make Hangman in Ruby.

Assumed knowledge:

  * Basic understanding of the terminal (bash/cmd)
  * Some knowledge of Ruby and programming concepts (variables, arrays, loops, if/else, etc)
  * Basic understanding of git (enough to clone this repo)

**If anything in that list above is totally foreign to you, fear not! You can either try your hand at the guessing game challenge (which is still to be written), or pair program with someone who has more experience. If in doubt, ask for someone to help you on Slack.**

Our end goal in this challenge is to create Hangman on the command line. There are quite a few different parts involved in that.

A key skill in programming is the ability to break down problems into smaller, more achievable steps. To help with that, I've outlined a series of iterations. Try getting each section to work before moving on to the next.

Getting started
------

You should clone this repository. You can do that by running `git clone https://github.com/Railsn00bs/hangman-challenge`. If you're Github savvy, I'd suggest forking this repo and cloning your own fork down. If you're unsure about how to clone a repo, ask for help on Slack.

Open up `hangman.rb` in the text editor of your choice. You'll notice a line of code that pulls a random word out of `words.txt` and assigns it to the variable `word_to_guess`.

Try adding `puts word_to_guess` at the end of the file and run `ruby hangman.rb`.

Hopefully, you'll see a random word and the program will quit.


Iteration 1 (displaying the word initially)
------

We should print out an underscore for each letter in the word to guess.  For example, if the word to guess was "art", we should display this to the user:

`Word to guess: _ _ _`

[Stuck? Click here for help!](hints.md#user-content-iteration-1-hints)

Iteration 2 (guessing)
-----

We should ask the user to guess a letter.
If the letter they guess is in our word, we should reveal it.
We should loop over these two steps

[Stuck? Click here for help!](hints.md#user-content-iteration-2-hints)

Iteration 3 (lives)
-----

The user should start out with 7 lives.

We should display their lives remaining before each guess.

When the user guesses a letter, if their guess is incorrect, they should lose a life.

[Stuck? Click here for help!](hints.md#3)

Iteration 4 (winning and losing)
-----

If the user guesses all the letters in a word, they should be told they've won the game, and the program should end.

If the user has no lives remaining, they should be informed they've been hung and the program should exit.

[Stuck? Click here for help!](hints.md#4)

Iteration 5 (make it pretty)
-----

It's important for our programs to have a quality user interface. As such, our program should display a text based view of hangman. To help out with this I've provided a series of fantastic text based depictions of a cruel spelling related execution. Put them to use!

```ruby
art = [
  <<-ART
/----
|   |
|
|
|
|
--------
  ART,
  <<-ART
/----
|   |
|   O
|
|
|
--------
  ART,
  <<-ART
/----
|   |
|   O
|   |
|
|
--------
  ART,
  <<-ART
/----
|   |
|   O
|  /|
|
|
--------
  ART,
  <<-ART
/----
|   |
|   O
|  /|\\
|
|
--------
  ART,
  <<-ART
/----
|   |
|   O
|  /|\\
|  /
|
--------
  ART,
  <<-ART
/----
|   |
|   O
|  /|\\
|  / \
|
--------
  ART
]
```

You can copy that into your application. You can print out the first image with `puts art[0]`. Feel free to make your own ascii art as well!

[Stuck? Click here for help!](hints.md#5)

Stretch goals
----

There are lots of fine details to get right. For example, what happens when...

* You enter a couple of letters as a guess
* You enter a number as a guess
* You guess the same letter over and over again
* You enter nothing
