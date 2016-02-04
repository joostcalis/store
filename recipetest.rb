def cookprogram
  ingredients = [
  "1 witte kool",
  "350 Gram gehakt",
  "200 Gram rijst",
  "1 Blik tomatenpuree",
  "1 groentebouillon blokje",
  "1 Groene Paprika",
  "1 Grote ui",
  "125 Gram Spekblokjes",
  "1 Bosje Peterselie",
  "5 Steeltjes dille",
  "5 Steeltjes dille",
  "5 Steeltjes tijm",
  "zout",
  "1 Bekertje peper"
]
stappen = [
  {
    1 => "Trek de koolbladeren los en kook deze 15 minuten in een ruime pan met water en citroensap van een halve citroen tot ze slap genoeg zijn om rolletjes mee te maken"
 },
 {
   2 => "Kook vervolgens de rijst 10 minuten in een andere pan en voeg een half groentebouillon blokje toe"
 },
 {
   3 => "Snij de groene paprika fijn in stukjes"
 },
 {
   4 => "Snij de uitjes fijn, bak de fijngesneden stukjes ui vervolgens in een pan tot dat de ijsnippers zacht en doorzichtig zijn"
 },
 {
   5 => "voeg een lepel paprikapoeder toe aan de gebakken uitjes en meng dit goed samen"
 },
 {
   6 => "doe de volgende dingen bij elkaar in een kom en meng ze: gehakt, je net gebakken uitjes, groene paprika, gekookte rijst, peterselie, 50  ml tomatenpuree, 2 eetlepels olijfolie, theelepel zout, snufje peper"
 },
 {
   7 => "Stop nu in alle koolbladeren die je wilt gebruiken wat gehakt mengsel"
 },
 {
   8 => "Omwikkel het koolblad om het gehakt mengsel en vouw de koolbladeren goed naar binnen"
 },
 {
   9 => "Snij de helft van de koolbladeren in kleine stukjes samen met de helft van de spekblokjes en 5 steeltjes dille en doe dit in een grote pan met water"
 },
 {
   10 => "Leg de rolletjes Sarmale bovenop de spekblokjes dille en kool"
 },
 {
   11 => "Bovenop de sarmale maak je een nieuwe laag met spekblokjes, gesneden kool, 150 ml tomatenpuree en wat tijmkruiden"
 },
 {
   12 => "Voeg vervolgens gekookt water met zout toe in de pan tot de sarmale in het geheel onder water is en laat het 45 minuten koken. Vergeet de pan niet af te dekken met een deksel!"
 }
]

puts "Goodmorning, welcome to my cooking program\n\n"
puts "What would you like to do?
A) See a list of the recipes that i have
B) See my shoppinglist for making sarmale
C) Start cooking
D) Review a particular step of the process"
choice = gets.chomp.upcase

if choice == "A"
  #do something
elsif choice == "B"
  ingredients.each do |ingredient|
    puts "#{ingredient}"
  end
  puts "would you like to start cooking this recipe?"
  start_cooking = gets.chomp.downcase
  if start_cooking == "yes"
    choice = "C"
  else
    puts "would you like to make another selection?"
    start_again = gets.chomp.downcase
  end
elsif choice == "C"
  stappen.each do |hash|
    hash.each do |stap, instructie|
    puts "stap #{stap}:\n\n #{instructie}"
    puts "press ENTER for the next step, AGAIN if you want to start over, or EXIT if  you want to leave the  program"
    what_to_do = gets.chomp.downcase
    if what_to_do == "again"
      cookprogram()
      return
    elsif what_to_do == "exit"
      puts "See u next time ur hungry"
      return
    else
      puts "ok here it comes\n\n"
      end
    end
  end
  puts "would you like to choose again?"
  start_again = gets.chomp.downcase
elsif choice == "D"
  puts "Which step would you like to review?"
  review = gets.chomp.to_i
  puts "Stappen: #{stappen[review - 1][review]}"

  puts "would you like to make another selection?"
  start_again = gets.chomp.downcase
end
if start_again == "yes"
  cookprogram()
end
end
cookprogram()
