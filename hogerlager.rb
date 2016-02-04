counter = 1
secret_number = 1 + rand(98)
puts "try to guess my secret number between 0 and 100"
puts "poging 1"
guess = gets.chomp.to_i
while guess != secret_number
if guess > 100 || guess < 0
    puts "pls pick a nr between 0 and a 100"
    counter += 1
    puts "poging #{counter}"
    guess = gets.chomp.to_i
  elsif guess > secret_number
    puts "lower! try again pls"
    counter += 1
    puts "poging #{counter}"
    guess = gets.chomp.to_i
  elsif guess < secret_number
    puts "higher! try again pls"
    counter += 1
    puts "poging #{counter}"
    guess = gets.chomp.to_i
  elsif guess > 100 || guess < 0
    puts "pls pick a nr between 0 and a 100"
    counter += 1
    puts "poging #{counter}"
    guess = gets.chomp.to_i


  end

end
puts "you guessed it!"
