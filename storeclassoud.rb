class Store
  def initialize
    @inventory = []
    @cart = []
    @reciept = 0
  end
  def add_item(name)
    @inventory.push(name)
  end
  def display
    @inventory.each do |object|
      puts "#{object.name}.......#{object.price}"
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


  def shoppingcart(total, list)


    puts "Select a product:\n\n"
    display

  fruit = gets.chomp.downcase


  puts "How many would you like?"
  amount = gets.chomp.to_i
  @inventory.each do |object|
    if fruit == object.name
      puts "match"
      @fruit1 = object.name
      @item_price = object.price
    end
  end



  total_price = @item_price * amount
  puts "you have selected #{amount} item(s) of #{@fruit1}. One item costs $#{@item_price},-. So your selection costs $#{total_price},-"
  puts "add this to your shoppingcart? (y/n)"
  add = gets.chomp.downcase
  if add == "y"
    @cart = list
    @cart.push(@fruit1)
    @reciept = total
    @reciept += total_price
    puts "your shoppingcart now contains:\n\n"
    @cart.each do |product|
      puts "#{product}"
    end

  puts "your complete order now costs $#{@reciept},-"

  puts "do you want to CHECKOUT or keep SHOPPING"
  continue = gets.chomp.downcase
  if continue == "shopping"
    shoppingcart(@reciept, @cart)

  else
    checkout(@reciept)
  end

  else
  puts "do you want to CHECKOUT or keep SHOPPING"
  continue = gets.chomp.downcase
  if continue == "shopping"
    shoppingcart(@reciept, @cart)
  else
    checkout(@reciept)
  end
  end
  end


end
