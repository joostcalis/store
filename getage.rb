puts "what is your name?"
name = gets.chomp
puts "what is your age?"
age = gets.chomp.to_i
puts "are you a male or a female?"
sex = gets.chomp.downcase
while sex != "male" && sex != "female"
  puts "pls answer with male or female"
  sex = gets.chomp.downcase

end
if sex == "male"
  puts "Hello Mr. #{name}, how are you doing today?"
else
  puts "Hello Ms. #{name}, how are you doing today?"
end
if age >= 100
  puts "you already reached a 100 years or more on this planet, congratulations!"
else
age_calc = 100 - age
hundred_years = Time.now.year + age_calc
puts "you will be a 100 years old in the year #{hundred_years}"
end
