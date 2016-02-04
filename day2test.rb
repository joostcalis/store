def store (reciept)
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
while fruit != :A && fruit != :B && fruit != :C && fruit != :D
  puts "input invalid, please try again\n\n"
  puts "Select a product:\n\n"
  menu.each do |id, product|
    puts "#{id}) #{product[:name]}, price: $#{product[:price]}"
  end
  fruit = gets.chomp.upcase.to_sym
end

puts "How many would you like?"
amount = gets.chomp.to_i

fruit1 = menu[fruit][:name]
item_price = menu[fruit][:price]
total_price = item_price * amount
reciept += total_price

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
