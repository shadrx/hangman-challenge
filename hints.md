[Iteration #1 Hints](#1)
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

[Iteration #2 Hints](#2)
----

So, in this iteration, we're going to let our users guess a letter.

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

So, "Ask the user to guess a letter".

We can get input from the user by using `gets`. We have to `strip` the newline character off the end of the string it returns however.

```ruby

letter_guessed = gets.strip

```

"If the user guesses correctly"
We can check this by checking if the `word_to_guess` includes our `letter_guessed`.

```ruby
if word_to_guess.include? letter_guessed
  puts "You guessed right!"
end
```

At this point, we're going to need to add a loop if you haven't already.

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

Now, "Display the word to guess (with underscores for the letters not yet guessed)"

There are a few things going on here. Think about what we might need to do so that we can show the letters the users have correctly guessed, and underscores for the rest.

* Keep track of the letters the user correctly guessed
* Change what we show for each character in the word based on if they have guessed that letter or not

So, we can keep track of the letters our user has correctly guessed with an array.

Add this to the top of your code, outside of the loop:

```ruby
letters_successfully_guessed = []
```

And inside of the loop, where you check if the guess was correct:
```ruby
if word_to_guess.include? letter_guessed
  letters_successfully_guessed << letter_guessed
end
```

Now, we have an array that has each successful letter guessed added to it.

Now things get a little tricky. When we want to display the word, we have to conditionally display either an underscore or the character depending on if the user has sucesfully guessed it.

If you are using the `"_ " * word_to_guess.length` code I showed in the first hints section, don't be alarmed that we're changing it now.

It's easiest to think about this if we do it on a character by character basis.

Paste in each of the following iterations of code, run your program, and see what happens.

```ruby
puts word_to_guess.chars.inspect
```

```ruby
puts word_to_guess.chars.map { |character| character }.inspect
```

```ruby
puts word_to_guess.chars.map { |character| "_" }.inspect
```

```ruby
puts word_to_guess.chars.map { |character| "_" }.join(" ")
```

There's a fair bit going on in the above code, so try and look at the differences between each line and what it changes.

`word_to_guess.chars` returns the characters in the string as an array. `"art".chars => ["a", "r", "t"]`

`["a", "r", "t"].map { |character| character }` actually does nothing. You `map` over an array with a piece of code (in ruby they're called blocks). `map` returns a new array, with the result of the block for each element. If that seems confusing, that's okay. It's easier to understand if you play around with it.

```irb
[1] irb(main)> [1, 2, 3].map { |number| number * 2 }
=> [2, 4, 6]
[2] irb(main)> ["apple", "banana"].map { |word| word.upcase }
=> ["APPLE", "BANANA"]
```

So `["a", "r", "t"].map { |character| "_" }` will return `["_", "_", "_"]`.

Finally, we do a `["_", "_", "_"].join(" ")`. This turns the array into a string, with a space between each character. `"_ _ _"`.

Now, for the fun part. Only showing underscores for the letter not guessed. This is what the code looks like:

```ruby
word_to_display = word_to_guess.chars.map do |character|
  if letters_successfully_guessed.include? character
    character
  else
    "_" 
  end
end.join(" ")

puts word_to_display
```

So, for every character in the word, we check if they've successfully guessed it in the past, and return the character or an underscore otherwise.
