def check_number(secret_number, counter)
  counter += 1
puts "\n\ntry to guess my secret number (between 0..100)\n\n"
puts "poging #{counter}"
guess = gets.chomp.to_i
if guess > 100 || guess < 0
    puts "pls pick a nr between 0 and a 100"
    check_number(secret_number, counter)
  elsif guess > secret_number
    puts "\n\nLOWER! try again pls\n"
    check_number(secret_number, counter)
  elsif guess < secret_number
    puts "\n\nHIGHER! try again pls\n"
    check_number(secret_number, counter)
  elsif guess == secret_number
    puts "you guessed it!"
end
end
check_number(1 + rand(98), 0)
