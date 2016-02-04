class Products
  attr_accessor :name, :price, :stock, :id, :minage
  def check_stock(amount)
    if amount > @stock
      puts "sorry we dont have that many #{@name}"
      puts "the max you can buy of this now = #{@stock}"
      return false
    else
      return true
    end
  end




end
