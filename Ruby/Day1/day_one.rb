random_number = rand(10) + 1

begin
  puts 'Guess a number between 1 and 10'
  print 'Guess: '
  user_guess = gets.to_i

  # Get lower and upper range
  lower_range = (1...random_number)
  upper_range = ((random_number + 1)..10)

  # Test the user's guess
  case(user_guess)
    when lower_range
      puts 'Too low, guess higher.'
    when upper_range
      puts 'Too high, guess lower.'
  end
end while user_guess != random_number

# Won't execute until user has guessed the number
puts "Congratulations, you guessed #{random_number} correctly"
