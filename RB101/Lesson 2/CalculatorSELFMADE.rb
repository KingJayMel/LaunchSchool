  # This is made using my own knowledge of writing code, not following the walkthrough
  # Just wanted to test my personal skill before continuing
  Kernel.puts("Hi, please put your first number")
  num1 = Kernel.gets().chomp().to_i()
  Kernel.puts("Now, your second number")
  num2 = Kernel.gets().chomp().to_i 
  Kernel.puts("What would you like to do (put in either +, -, / , or * for your type of operation")
  oper = Kernel.gets().chomp()
  if oper == "+"
    Kernel.puts(num1 + num2)
  elsif oper == "-"
    Kernel.puts(num1 - num2)
  elsif oper == "/"
    Kernel.puts(num1.to_f / num2.to_f)
  elsif oper == "*"
    Kernel.puts(num1 * num2)
  else
  Kernel.puts("Please input a valid operation")
  end