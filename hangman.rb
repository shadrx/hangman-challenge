
word_to_guess = File.readlines('words.txt').map { |word| word.strip }.sample
