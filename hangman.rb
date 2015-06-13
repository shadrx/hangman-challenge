require 'set'

$art = [
  <<-ART ,
 ____________
 |/       |
 |
 |
 |
 |
 |
_|___
  ART
  <<-ART ,
 ____________
 |/       |
 |      (._.)
 |
 |
 |
 |
_|___
  ART
  <<-ART ,
 ____________
 |/       |
 |      (._.)
 |        |
 |
 |
 |
_|___
  ART
  <<-ART ,
 ____________
 |/       |
 |      (._.)
 |       /|\\
 |
 |
 |
_|___
  ART
  <<-ART ,
 ____________
 |/       |
 |      (._.)
 |       /|\\
 |        |
 |
 |
_|___
  ART
  <<-ART ,
 ____________
 |/       |
 |      (._.)
 |       /|\\
 |        |
 |       / \\
 |
_|___
  ART
  <<-ART ,
 ____________
 |/       |
 |      (x_.)
 |       /|\\
 |        |
 |       / \\
 |
_|___
  ART
    <<-ART ,
 ____________
 |/       |
 |      (x_x)
 |       /|\\
 |        |
 |       / \\
 |
_|___
  ART

]

STARTING_LIVES = 7

def print_welcome
    puts "=== RailsN00bs Hangman ==="
end

def print_man_being_hanged(lives_left)
    puts $art[STARTING_LIVES - lives_left]
end

def print_word(word, guessed_letters)
    puts word.chars.map {|c| guessed_letters.include?(c) ? c : "_"}.join(" ")
end

def play_game
    lives_left = STARTING_LIVES
    guessed_letters = Set.new()
    word_to_guess = File.readlines('words.txt').map { |word| word.strip }.sample

    until word_to_guess.chars.all?{ |c| guessed_letters.include?(c) } or lives_left == 0
        puts "Lives left: #{lives_left}"
        print_man_being_hanged(lives_left)
        print_word(word_to_guess, guessed_letters)

        guessed_letter = gets.strip
        guessed_letters.add(guessed_letter)

        if word_to_guess.include? guessed_letter
            puts "That's right!"
        else
            lives_left -= 1
        end
    end

    if lives_left > 0
        puts "You win!"
    else
        print_man_being_hanged(STARTING_LIVES + 1) # could be nicer!
        puts "You lost... :( better luck next time!"
    end
end

loop do
    print_welcome()
    play_game()

    puts "Play again? (y/n)"

    answer = gets.strip.downcase

    if answer == 'n'
        break
    end
end
