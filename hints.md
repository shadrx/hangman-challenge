[Iteration 1 Hints](#1)
----

We're trying to take a word, like "art", and turn it into a bunch of underscores, separated by spaces.

One of the best skills to have as a programmer is the ability to google things. The hard part (at the start) is breaking problems into something you can google.

Okay, so, let's start out. Google "ruby turn letters into word into underscores"

Nothing useful, right? We have to generalize our problem into things we can find on google. So, we need to get our terminology right.

`"art"` is a string. It's a series of characters. We want to replace it with a series of underscores, the same number.

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
(Note the space after the underscore in the string)
