def integer_to_string(x)
  a = []
  count1 = 1
  count2 = 0
  trigger1 = 0
  
  if x > 0
    trigger1 += 1
  elsif x < 0
    trigger1 += 0
  elsif x == 0
    trigger1 += 2
  end
  
  if x < 0
    x = x * -1
  end

  ar = x.digits.reverse
  arcount = ar.count
  
  while count2 < arcount
    l = ar[count2]
    if l == 1
      a.push('1')
    elsif l == 2
      a.push('2')
    elsif l == 3
      a.push('3')
    elsif l == 4
      a.push('4')
    elsif l == 5
      a.push('5')
    elsif l == 6
      a.push('6')
    elsif l == 7
      a.push('7')
    elsif l == 8
      a.push('8')
    elsif l == 9
      a.push('9')
    elsif l == 0
      a.push('0')
    end
    count1 += 1
    count2 += 1
  end

  if trigger1 == 2
    a.join
  elsif trigger1 == 1
    '+' + a.join
  elsif trigger1 == 0
    '-' + a.join
  end
end

puts integer_to_string(4321) == '+4321'
puts integer_to_string(-123) == '-123'
puts integer_to_string(0) == '0'