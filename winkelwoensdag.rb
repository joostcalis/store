require './products.rb'
require './foods.rb'
require './drinks.rb'
require './adult.rb'
require './woensdagavondwinkel.rb'

apple = Foods.new
apple.name = "apple"
apple.price = 2
apple.stock = 10
apple.id = :A
apple.minage = 0


pear = Foods.new
pear.name = "pear"
pear.price = 1
pear.stock = 15
pear.id = :B
pear.minage = 0


cola = Drinks.new
cola.name = "cola"
cola.price = 2
cola.stock = 20
cola.id = :C
cola.minage = 0

fanta = Drinks.new
fanta.name = "fanta"
fanta.price = 3
fanta.stock = 15
fanta.id = :D
fanta.minage = 0

beer = Adult.new
beer.name = "beer"
beer.price = 2
beer.stock = 20
beer.id = :E
beer.minage = 18

scarymovie = Adult.new
scarymovie.name = "scarymovie"
scarymovie.price = 2
scarymovie.stock = 20
scarymovie.id = :F
scarymovie.minage = 16

supermarkt = Store.new
supermarkt.add_item(apple)
supermarkt.add_item(pear)
supermarkt.add_item(cola)
supermarkt.add_item(fanta)
supermarkt.add_item(beer)
supermarkt.add_item(scarymovie)

supermarkt.selection
