class Vehicle
  attr_accessor :color, :speed, :type, :name
  def race(vehicle)
    puts "ok the #{@name} and #{vehicle.name} are at the startline\n\n"
    puts "and there they go!!\n\n"
    puts "place ur bets now...who is gonna win?"
    bet = gets.chomp.downcase
    if @speed > vehicle.speed
        puts "congratulations #{@name} you are faster than #{vehicle.name}"
        if bet == @name
          puts "congratulations you doubled ur money!"
        else
          puts "haha your money is mine!"
        end
    else
      puts "congratulations #{vehicle.name} you are faster than #{@name}"
      if bet == vehicle.name
        puts "congratulations you doubled ur money!"
      else
        puts "haha your money is mine!"
      end
    end

  end
end

class Car < Vehicle
  def move
    if @type == "sportscar"
      puts "vroom vroom im moving very fast"
    elsif @type == "familycar"
      puts "vvrroom i am moving pretty slow but i am very safe!"
    elsif @type == "oldtimer"
      puts "vvv...rr...oooo..mm...I am moving very slow, but i look very cool!"
    end
  end
end

class Plane < Vehicle
  def move
    if @type == "cargo"
      puts "I am flying low and slow cause im filled with stuff"
    elsif @type == "fighterjet"
      puts "U cant see me..just hear me..cause im flying so fassst"
    end
  end
end
ferrari = Car.new
ferrari.color = "red"
ferrari.speed = 300
ferrari.type = "sportscar"
ferrari.name = "ferrari"

cargoplane = Plane.new
cargoplane.color = "white"
cargoplane.speed = 1000
cargoplane.type = "cargo"
cargoplane.name = "cargoplane"

lada = Car.new
lada.color = "Rusted Brown"
lada.speed = 70
lada.type = "familycar"
lada.name = "lada"


ferrari.race(lada)
