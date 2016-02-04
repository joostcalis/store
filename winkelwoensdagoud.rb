require './products.rb'
require './foods.rb'
require './drinks.rb'
require './adult.rb'
require './storeclass.rb'

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


supermarkt = Store.new
supermarkt.add_item(apple)
supermarkt.add_item(pear)
supermarkt.add_item(cola)
supermarkt.add_item(fanta)
supermarkt.add_item(beer)
supermarkt.add_item(scarymovie)

total = 0
@cart = ["shoppingcart\n\n"]
supermarkt.shoppingcart(total, @cart)
