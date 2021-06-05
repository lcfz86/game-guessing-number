puts 'Greetings, What is your name?: '
name = gets.chomp

puts "Morning, #{name}"

puts "Please guess the number from 1 to 50."
puts "May I know what the number you guessed is?: "
number = gets.chomp.to_i

guess = rand 1..50

while number != guess
  puts 'Wrong number, Please guess again!'
  number = gets.chomp.to_i
end

if number == guess
  puts 'Congratulation, your number is correct!'
end
