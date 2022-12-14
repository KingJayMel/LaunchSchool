def running_total(x)
  a = []
  countingarray1 = 0
  countingarray2 = 0
  count1 = 1
  arraytotal = x.count
  while count1 < arraytotal + 1
    if count1 == 1
      a.push(x[0])
    else
      a.push(a[countingarray2] + x[countingarray1])
      countingarray2 += 1
    end
    count1 += 1
    countingarray1 += 1
  end
  a 
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
