
def check_number
secret_number = 20
puts "try to guess my secret number (between 0..100)"
guess = gets.chomp.to_i
if guess > 100 || guess < 0
    puts "pls pick a nr between 0 and a 100"
    check_number
  elsif guess > secret_number
    puts "lower! try again pls"
    check_number
  elsif guess < secret_number
    puts "higher! try again pls"
    check_number
  elsif guess == secret_number
    puts "you guessed it!"
end
end
check_number
