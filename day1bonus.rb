# Play guess the number between 1 and 10
number = rand(10)
guess = nil
tooLow = "\r\nYour guess is too low, try again."
tooHigh = "\r\nYour guess is too high, try again."

while guess != number 
    puts "\r\nGuess a number between 1 and 10: "
    guess = gets.to_i
    puts (guess < number) ? tooLow : tooHigh
end

puts "\r\nYou got it! Great job."