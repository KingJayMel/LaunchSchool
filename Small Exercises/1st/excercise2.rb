def is_odd?(a)
    mumbo = a.remainder(2)
    if mumbo > 0
        puts "its odd"
    else
        puts "its even"
    end
end

puts "put in number to see if its odd"
us = gets.chomp.to_i.abs

is_odd?(us)