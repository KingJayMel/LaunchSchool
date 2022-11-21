puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
tireage = gets.chomp.to_i

current_year = Time.new.year
part1 = current_year - age
part2 = part1 + tireage
part3 = tireage - age 

puts "It's " + current_year.to_s + ". You will retire in " + part2.to_s + "."
puts "You have only " + part3.to_s + " years of work to go!"