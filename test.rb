def store(total_price)
apple_cost = 2
banana_cost = 1
lemon_cost = 3
mango_cost = 2
pear_cost = 4

puts "Select a fruit:
1) apple
2) banana
3) lemon
4) mango
5) pear
[1-5]:"

fruit = gets.chomp.to_i
while fruit > 5
  puts "input invalid, please try again\n\n"
  puts "Select a fruit:
  1) apple
  2) banana
  3) lemon
  4) mango
  5) pear
  [1-5]:"
  fruit = gets.chomp.to_i
end

puts "You chose: #{fruit}"
puts "How many would you like?"
amount = gets.chomp.to_i
if fruit == 1

    fruit1 = "apple"
    price = apple_cost
    total_price += apple_cost * amount

  elsif fruit == 2

    fruit1 = "banana"
    price = banana_cost
    total_price += banana_cost * amount

  elsif fruit == 3

    fruit1 = "Lemon"
    price = lemon_cost
    total_price += lemon_cost * amount

  elsif fruit == 4

    fruit1 = "Mango"
    price = mango_cost
    total_price += mango_cost * amount

  elsif fruit == 5

    fruit1 = "Pear"
    price = pear_cost
    total_price += pear_cost * amount

  end
  puts "you have selected #{amount} item(s) of #{fruit1}. One item costs $#{price},-. Your total bill is now $#{total_price},-"
  puts "would you like to buy something else? (y/n)"
  something_else = gets.chomp.downcase

  if something_else == "n"

    puts "Ok that will be $#{total_price},- please. Would you like to pay with pin or cash?"
    payment_choice = gets.chomp.downcase
    while payment_choice != "pin" && payment_choice != "cash"

      puts "Sorry we dont accept #{payment_choice}. Please choose between pin or cash"
      payment_choice = gets.chomp.downcase

  end
    if payment_choice == "pin"

      puts "Since all banks are corrupt i have to charge 1 euro extra so your bill will be $#{total_price + 1},-"

    elsif payment_choice == "cash"

      puts "cashmoney baby! thanks for visiting my store"

    end

  elsif something_else == "y"

    store(total_price)

  end
end
store(0)
