puts "What is the bill?"
b = gets.chomp.to_i
puts "What is the tip percentage?"
tip = gets.chomp.to_i

transfer1 = "." + tip.to_s
transfer2 = transfer1.to_f + 1
con = transfer2 * b
tiptotal = con - b 

puts "The tip is $" + tiptotal.round(2).to_s
puts "The total is $" + con.round(2).to_s 
