def reverse_words(a)
    d = a.split
    f = d.length
    l = []
    while f > 0
        f = f - 1
        k = d[f]
        c = k
        if k.size > 4
            c = k.reverse
        end
        l << c
    end
    puts l.reverse.join" "
end

reverse_words('Professional')
reverse_words('Walk around the block')
reverse_words('Launch School')