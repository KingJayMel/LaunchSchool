puts "Enter the Length of the room in meters:"
l = gets.chomp.to_i
puts "Enter the width of the room in meters:"
w = gets.chomp.to_i
area = l * w
con = area * 10.7639
puts "The area of the room is " + area.to_s + " square meters (" + con.to_s + " sqaure feet)."