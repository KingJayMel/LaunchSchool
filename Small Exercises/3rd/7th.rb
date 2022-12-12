def oddities(x)
  count1 = x.count
  count2 = 1
  count3 = 0
  a = []
  while count2 < (count1 + 2)
    count2 += 1
    if count2.odd?
      a.push(x[count3])
      count3 += 2
    end
  end
  a
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
