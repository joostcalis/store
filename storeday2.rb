def store(reciept)
  menu = {
    A: {  name: "cigs",
          price: 6,
          max: 10
       },
    B: {  name: "Milkpowder",
          price: 15,
          max: 2
       },
    C: {  name: "Wine",
          price: 10,
          max: 4
       },
    D: {  name: "Beer",
          price: 3,
          max: 6
       },
  }

  puts "Select a product:\n\n"
  menu.each do |id, product|
    puts "#{id}) #{product[:name]}, price: $#{product[:price]}"
  end

fruit = gets.chomp.upcase.to_sym
while fruit != :A && while fruit != :B && while fruit != :C && while fruit != :D
  puts "input invalid, please try again\n\n"
  puts "Select a product:\n\n"
  menu.each do |id, product|
    puts "#{id}) #{product[:name]}, price: $#{product[:price]}"
  end
  fruit = gets.chomp.upcase.to_sym
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
  puts "you have selected #{amount} item(s) of #{fruit1}. One item costs $#{item_price},-. So your selection costs $#{total_price},-"
  puts "add this to your shoppingcart? (y/n)"
  add = gets.chomp.downcase
  if add == "y"
  puts "your complete order now costs $#{reciept},-"
else
  store(reciept-total_price)
  return
end

  puts "would you like to buy something else? (y/n)"
  something_else = gets.chomp.downcase

  if something_else == "n"

    puts "Ok that will be $#{reciept},- please. Would you like to pay with pin or cash?"
    payment_choice = gets.chomp.downcase
    while payment_choice != "pin" && payment_choice != "cash"

      puts "Sorry we dont accept #{payment_choice}. Please choose between pin or cash"
      payment_choice = gets.chomp.downcase

  end
    if payment_choice == "pin"

      puts "Since all banks are corrupt i have to charge 1 euro extra so your bill will be $#{reciept + 1},-"

    elsif payment_choice == "cash"

      puts "cashmoney baby! thanks for visiting my store"

    end

  elsif something_else == "y"

    store(reciept)

  end
end
store(0)
