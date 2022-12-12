def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
num1 = gets.chomp

prompt("Enter the second number:")
num2 = gets.chomp

prompt("#{num1} + #{num2} = #{num1.to_i + num2.to_i} ")
prompt("#{num1} - #{num2} = #{num1.to_i - num2.to_i} ")
prompt("#{num1} * #{num2} = #{num1.to_i * num2.to_i} ")
prompt("#{num1} / #{num2} = #{num1.to_i / num2.to_i} ")
prompt("#{num1} % #{num2} = #{num1.to_i % num2.to_i} ")
prompt("#{num1} ** #{num2} = #{num1.to_i**num2.to_i} ")
