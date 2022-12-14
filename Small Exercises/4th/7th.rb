def string_to_integer(x)
  k = x.chars
  total = x.length
  count1 = 0
  count2 = 0
  a = []
  while count1 < total
    l = k[count1]
    if l == "1"
      a.push(1)
    elsif l == '2'
      a.push(2)
    elsif l == '3'
      a.push(3)
    elsif l == '4'
      a.push(4)
    elsif l == '5'
      a.push(5)
    elsif l == '6'
      a.push(6)
    elsif l == '7'
      a.push(7)
    elsif l == '8'
      a.push(8)
    elsif l == '9'
      a.push(9)
    elsif l == '0'
      a.push(0)
    end
    count1 += 1
  end
  arraytotal1 = a.count
  final = 0
  while count2 < arraytotal1
    if count2 == 0
      final = final + a[count2]
      count2 += 1
    else
      final = (10 * final) + a[count2]
      count2 += 1
    end
  end
  final
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570