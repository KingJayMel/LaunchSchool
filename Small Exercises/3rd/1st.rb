def prompt(message)
  puts "=> #{message}"
end

prompt("Please enter the 1st number")
num1 = gets.chomp.to_i

prompt("Please enter the 2nd number")
num2 = gets.chomp.to_i

prompt("Please enter the 3rd number")
num3 = gets.chomp.to_i

prompt("please enter the 4th number")
num4 = gets.chomp.to_i

prompt("Please enter the 5th number")
num5 = gets.chomp.to_i

prompt("Please enter the last number")
num6 = gets.chomp.to_i

a = []
a.push(num1, num2, num3, num4, num5)
if a.include? num6
  prompt("The number #{num6} does appear in the list: [#{a.join ', '}]")
else
  prompt("The number #{num6} does not appear in the list: [#{a.join ', '}]")
end
