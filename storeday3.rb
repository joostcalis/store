class Product
  attr_accessor :price, :name, :restrictor
def describe
  puts "#{@name}"
end
def old_enough(age)
  if age > restrictor
    puts "enjoy"
  else puts "ur not old enough"
  end
end
end

class Drinks < Product
end

class Foods < Product
end

cola = Drinks.new
cola.name = "cola"
cola.price = 4
cola.restrictor = 12

bread = Foods.new
bread.name = "bread"
bread.price = 3
bread.restrictor = 200

items = [cola, bread]
items.each do |item|
  puts item.price
end
cola.old_enough(10)
