def store(reciept)
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

puts "How many would you like?"
amount = gets.chomp.to_i
if fruit == 1
  fruit1 = "apple"
  item_price = apple_cost
  total_price = apple_cost * amount
  reciept += total_price

elsif fruit == 2

  fruit1 = "banana"
  item_price = banana_cost
  total_price = banana_cost * amount
  reciept += total_price

elsif fruit == 3

  fruit1 = "Lemon"
  item_price = lemon_cost
  total_price = lemon_cost * amount
  reciept += total_price

elsif fruit == 4

  fruit1 = "Mango"
  item_price = mango_cost
  total_price = mango_cost * amount
  reciept += total_price

elsif fruit == 5

  fruit1 = "Pear"
  item_price = pear_cost
  total_price = pear_cost * amount
  reciept += total_price

end
puts "you have selected #{amount} item(s) of #{fruit1}. One item costs #{item_price},-. So your selection costs #{total_price},-"
puts "add this to your shoppingcart? yes no"
shoppingcart = gets.chomp.downcase
if shoppingcart == "yes"

  sure = true

elsif shoppingcart == "no"

  sure = false

end
if sure == true

  puts "your complete order now costs #{reciept},-"

elsif sure == false

  store(reciept - total_price)
  return

end
puts "would you like to buy something else? y n"
  something_else = gets.chomp.downcase

  if something_else == "n"

    puts "Ok that will be #{reciept},- please. Would you like to pay with pin or cash?"
    payment_choice = gets.chomp.downcase

      if payment_choice == "pin"

        puts "Since all banks are corrupt i have to charge 1 euro extra so your bill will be #{reciept + 1},-"

      elsif payment_choice == "cash"

        puts "cashmoney baby! thanks for visiting my store"

      end

  elsif something_else == "y"

    store(reciept)

  end
end
store(0)
