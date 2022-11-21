def calculate_bonus(n, tof)
    if tof == false
        k = 0
    elsif tof == true
        k = n/2
    end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000