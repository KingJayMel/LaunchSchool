def digit_list(a)
    a.digits.reverse 
end

puts "Input number to see them spread out"
a1= gets.chomp.to_i

puts digit_list(a1)