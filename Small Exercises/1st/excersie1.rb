def repeat(a, b)
    loop do
        if b > 0
            puts (a)
            b = b - 1
        elsif b <= 0
            break
    end
end
end

puts "Input word you want repeated"
a1 = gets.chomp
puts "Now how many times you want it repeated, no negative integers"
a2 = gets.chomp.to_i

puts repeat(a1, a2)