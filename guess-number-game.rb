player_score = []

loop do
  tries = 0

  puts 'Greetings, What is your name?: '
  name = gets.chomp

  player_score << [name, tries]

  puts "Morning, #{name}"

  puts "Please guess the number from 1 to 50."
  puts "May I know what the number you guessed is?: "
  number = gets.chomp.to_i

  guess = rand 1..50

  tries += 1

  while number != guess
    if number > guess
      puts 'Wrong number, go lower.'
    else
      puts 'Wrong number, go higher.'
    end
    number = gets.chomp.to_i
    tries += 1
  end

  if number == guess
    player_score.last[1] = tries
    puts player_score.inspect
    puts 'Congratulation, your number is correct!'

    # Print out the scores
    puts 'Scores'
    puts '=' * 50
    player_score.each do |player|
      puts "Name: #{player[0]} - Score: #{player[1]}"
    end
  end
end
