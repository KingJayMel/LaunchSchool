def stringy(n)
    a = []
    f = 1
    c = 1
    while n > 0
        n = n - 1
        if f >= 1
            a.push("1")
            n = n - 1
        end
        f = f - 1
        if c <= 1
            a.push("0")
            c = c + 1
        elsif c >= 2
            a.push("1")
            c = c - 1
        end
    end
    a.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'