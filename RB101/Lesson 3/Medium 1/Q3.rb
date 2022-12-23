def factors(number)
  trigger = 0
  if number < 0
    trigger = 1
    number = number * -1
  end
  divisor = number
  factors = []

  if number > 0
    loop do
      if number % divisor == 0
        factors << number / divisor 
      end
      divisor -= 1

      if divisor == 0
        break
      end
    end
  elsif number == 0
    puts 0
  end

  if trigger == 1
    factors
  else 
    factors
  end
end

puts factors(-10)