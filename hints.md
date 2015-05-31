[Iteration 1 Hints](#1)
----

We're trying to take a word, like "art", and turn it into a bunch of underscores, separated by spaces.

`"art"` is a string. It's a series of characters. We want to show a series of underscores, the same number as there are characters in our string.

We can get the number of characters in our string with `art.length`. How might we make a string of underscores of the same length?

In Ruby, you can multiply a string by a number, and you'll get that string repeated that many times. Let's test that out in `irb`.

```
$ irb
[1] irb(main)> "_" * 5
=> "_____"
```

That's a good start! So we can get the right number of underscores with `"_" * "art".length`.

Let's add that to our program and test it out.

```ruby
puts "_" * word_to_guess.length
```

Now run `ruby hangman.rb`. It should show a bunch of underscores, the same length as the word. One problem though; there are no spaces in between! Think for a moment, how might you put a space between each underscore?


```ruby
puts "_ " * word_to_guess.length
```
(Note the space after the underscore in the string.)

[Iteration #2 Hints](hints.md#2)
----

So, in this iteration, we're going to let our users guess a letter.

We can get input from the user by using `gets`. We have to `strip` the newline character off the end of the string it returns however.

```ruby

letter_guessed = gets.strip

puts word_to_guess.include?(letter_guessed)

```

At this point, we're going to need to add a loop.

The most simple way to do this in Ruby with a `loop do`.

Like so:

```ruby
loop do
  # code that will run over and over again
  puts "All work and no play makes jack a dull boy"
end
```

You can try run that code above. If your computer ends up in an infinite loop, you can hit `ctrl+c` to exit the program.

You can stop the loop inside of the program using `break`. This will exit the loop, and continue after the `end`.

I like to think about the plain english explanations of how my program works. It's called pseudocode, and it's a great way to separate your understanding of how a program works with your understand of how you will implement it.

Ignoring everything but displaying the word and guessing, here's my pseudocode for hangman.

```
Start
Pick a random word for the user to guess
Loop
  Display the word to guess (with underscores for the letters not yet guessed)

  Ask the user to guess a letter

  If the user guesses correctly
    Reveal the letter
```



