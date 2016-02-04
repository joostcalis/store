def store
apple_cost = 2
banana_cost = 1
lemon_cost = 3
cola_cost = 2
chips_cost = 4

puts "Select a fruit:
1) apple
2) banana
3) lemon
4) cola
5) chips
[1-5]:"

fruit = gets.chomp.to_i
while fruit > 5
  puts "input invalid, please try again\n\n"
  puts "Select a fruit:
  1) apple
  2) banana
  3) lemon
  4) cola
  5) chips
  [1-5]:"
  fruit = gets.chomp.to_i
end


puts "You chose: #{fruit}"
puts "How many would you like?"
amount = gets.chomp.to_i

if fruit == 1

    fruit1 = "apple"
    price = apple_cost
    total_price = apple_cost * amount

  elsif fruit == 2

    fruit1 = "banana"
    price = banana_cost
    total_price = banana_cost * amount

  elsif fruit == 3

    fruit1 = "Lemon"
    price = lemon_cost
    total_price = lemon_cost * amount

  elsif fruit == 4

    fruit1 = "Cola"
    price = cola_cost
    total_price = cola_cost * amount

  elsif fruit == 5

    fruit1 = "Chips"
    price = chips_cost
    total_price = chips_cost * amount

  end
  puts "you have selected #{amount} item(s) of #{fruit1}. One item costs #{price} euro. So your total bill is #{total_price} euro"
  puts "would you like to buy something else? (y/n)"
  something_else = gets.chomp.downcase
  if something_else == "n"

    puts "Ok, thank you for visiting my store"

  elsif something_else == "y"

    store

  end
end
store
