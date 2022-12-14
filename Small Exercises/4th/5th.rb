def multisum(x)
  count1 = 1
  count2 = 1
  a = []
  while count1 <= x
    if count1 % 3 == 0
      l = count1 / 3
      a.push(count1)
    elsif count1 % 5 == 0
      k = count1 / 5
      a.push(count1)
    end
    count1 += 1
  end

  a.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168