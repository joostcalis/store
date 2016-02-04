class Animal
  def initialize name, color
    @name = name
    @color = color
  end
  def name
    return @name
  end
  def color
    return @color
  end
  def attributes
    return @color
    return @name
  end
end
class Parrot < Animal
  def speak
    puts "lorre...lorre"
    puts "what would you like to do? (REPEAT or get a RANDOM answer)"
    answer = gets.chomp.downcase
    if answer == "repeat"
      puts "say something"
      repeat = gets.chomp.downcase
      puts "lorre... #{repeat}"
    else
      random = rand(10)
      if random > 7
        puts "lorrrre run run its the cops..."
      elsif random < 3
        puts "give me a cookie!"
      else
        puts "u are ugggggggly!"
      end
    end
    end
end

oscar = Parrot.new("oscar", :red)
robby = Parrot.new("robby", :red)
puts oscar.name
puts oscar.color
oscar.speak

animals = [oscar, robby]

animals.each do |name|
  name.speak
end
