class Store
  def initialize
    @inventory = []
    @cart = []
    @reciept = 0
    @shoppingcart = []
    @shoppingcart_value = 0
  end
  def add_item(name)
    @inventory.push(name)
  end
  def display
    @inventory.each do |object|
      puts "#{object.id})  #{object.name} - price: $#{object.price},-"
    end
  end
  def add_to_cart(naam, prijs)
    @shoppingcart.push(naam => prijs)
  end
  def show_cart_contents
    @shoppingcart.each do |hash|
      hash.each do |product, price|
        puts "#{product} for a total of $#{price},-"
      end
    end
  puts "\n\nyour total shoppingcart value = $#{@shoppingcart_value},-"
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

  def check_age(age, produkt)
    if age < produkt
      return false
    else
      return true
    end
  end


def selection
  puts "Select a product:\n\n"
  display
  product_selection = gets.chomp.upcase.to_sym
  puts "How many would you like?"
  amount = gets.chomp.to_i
  @inventory.each do |object|
    if product_selection == object.id
      if object.minage > 0
        puts "what is your age?"
        get_age = gets.chomp.to_i
        minimum = object.minage
        if check_age(get_age, minimum)
          puts "you're good to go"
        else
          puts "sorry you're not old enough to buy this item, please make another selection\n\n"
          selection
          return
        end
      end
        total_price = object.price * amount
        puts "you have selected #{amount} item(s) of #{object.name}. One item costs $#{object.price},-. So your selection costs $#{total_price},-"
        puts "add this to your shoppingcart? (y/n)"
        add = gets.chomp.downcase
        if add == "y"
          add_to_cart(object.name, total_price)
          @shoppingcart_value += total_price
          puts "your shoppingcart now contains:\n\n"
          show_cart_contents
          puts "do you want to CHECKOUT or keep SHOPPING"
          continue = gets.chomp.downcase
          if continue == "shopping"
            selection
          else
            checkout(@shoppingcart_value)
          end
        else
          puts "your order was not added to ur cart\n\n"
          puts "do you want to CHECKOUT or keep SHOPPING"
          continue = gets.chomp.downcase
          if continue == "shopping"
            selection
          else
            checkout(@total_price)
          end
        end
    end
  end
end
end
