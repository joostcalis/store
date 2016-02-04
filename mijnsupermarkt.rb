total = 0
cart = []
apple = Foods.new
apple.name = "apple"
apple.price = 2
apple.stock = 10


pear = Foods.new
pear.name = "pear"
pear.price = 1
pear.stock = 15


cola = Drinks.new
cola.name = "cola"
cola.price = 2
cola.stock = 20


fanta = Drinks.new
fanta.name = "fanta"
fanta.price = 3
fanta.stock = 15


beer = Adult.new
beer.name = "beer"
beer.price = 2
beer.stock = 20
beer.min_age = 18


scarymovie = Adult.new
scarymovie.name = "scarymovie"
scarymovie.price = 2
scarymovie.stock = 20
scarymovie.min_age = 16


Supermarkt = Store.new
Supermarkt.add_item(apple.name)
Supermarkt.add_item(pear.name)
Supermarkt.add_item(cola.name)
Supermarkt.add_item(fanta.name)
Supermarkt.add_item(beer.name)
Supermarkt.add_item(scarymovie.name)
def shoppingcart(total, list)


  puts "Select a product:\n\n"
  Supermarkt.list

fruit = gets.chomp.downcase


puts "How many would you like?"
amount = gets.chomp.to_i

fruit1 = fruit.name
item_price = fruit.price
total_price = item_price * amount
puts "you have selected #{amount} item(s) of #{fruit1}. One item costs $#{item_price},-. So your selection costs $#{total_price},-"
puts "add this to your shoppingcart? (y/n)"
add = gets.chomp.downcase
if add == "y"
  cart = list
  cart.push(fruit1)
  reciept = total
  reciept += total_price
  puts "your shoppingcart now contains:\n\n"
  cart.each do |product|
    puts "#{product}"
  end

puts "your complete order now costs $#{reciept},-"

puts "do you want to CHECKOUT or keep SHOPPING"
continue = gets.chomp.downcase
if continue == "shopping"
  shoppingcart(reciept, cart)

else
  checkout(reciept)
end

else
puts "do you want to CHECKOUT or keep SHOPPING"
continue = gets.chomp.downcase
if continue == "shopping"
  shoppingcart(reciept, cart)
else
  checkout(reciept)
end
end
end

def checkout (bill)
  puts "Ok that will be $#{bill},- please. Would you like to pay with pin or cash?"
  payment_choice = gets.chomp.downcase
  while payment_choice != "pin" && payment_choice != "cash"

    puts "Sorry we dont accept #{payment_choice}. Please choose between pin or cash"
    payment_choice = gets.chomp.downcase

end
  if payment_choice == "pin"

    puts "Since all banks are corrupt i have to charge 1 euro extra so your bill will be $#{bill + 1},-"

  elsif payment_choice == "cash"

    puts "cashmoney baby! thanks for visiting my store"

  end



end
shoppingcart(total,cart)
