require 'set'

def print_welcome
    puts "=== RailsN00bs Hangman ==="
end

def print_word(word, guessed_letters)
    puts word.chars.map {|c| guessed_letters.include?(c) ? c : "_"}.join(" ")
end

def play_game
    lives_left = 7
    guessed_letters = Set.new()
    word_to_guess = File.readlines('words.txt').map { |word| word.strip }.sample
   
    puts word_to_guess 
    print_welcome()

    until word_to_guess.chars.all?{ |c| guessed_letters.include?(c) } or lives_left == 0
        puts "Lives left: #{lives_left}"
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
        puts "You lost... better luck next time!"
    end
end   

play_game() 
    
