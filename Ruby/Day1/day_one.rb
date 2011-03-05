random_number = rand(10)

puts 'Pick a number between 0 and 9'
guess_num = gets.to_i

if guess_num == random_number
  puts 'Congratulations!'
elsif guess_num < random_number
  puts 'Too low'
else
  puts 'Too high'
end
