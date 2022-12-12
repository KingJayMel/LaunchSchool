def prompt(message)
  puts "==> #{message}"
end

prompt("Please write word or multiple words")
words = gets.chomp

prompt("There are #{words.count '^ '} characters in #{words}.")
