puts "Good morning, please tell me your name"
name = gets.chomp
puts "Good morning #{name} nice to see u"
puts "Are u in the mood to start coding?"
mood = gets.chomp
mood.downcase!
if mood == "yes"
  puts "Well lets get going then"
else
  puts "How is that possible, ur in a coding bootcamp"
  end
