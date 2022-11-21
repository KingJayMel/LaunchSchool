puts "What is your name?"
name = gets
if name.include? "!"
    k = name.chomp.upcase
    l = k.delete! "!"
    puts "HELLO " + l + ". WHY ARE WE SCREAMING?"
else
    k = name.chomp 
    puts "Hello " + k + "."
end