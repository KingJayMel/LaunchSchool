puts ">> Please enter an integer greater than 0:"
answer1 = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer2 = gets.chomp
a = []
hui = []
count = 1
while count <= answer1 
        a.push(count)
        count = count + 1
end
if answer2 == "s"
    puts a.sum
elsif answer2 == "p"
    count1 = 0
    count2 = 1
    count3 = 1
    asl1 = a[count1]
    asl2 = a[count2]
    hui.push(asl1*asl2)
    hin = answer1 - 1
    while count3 < hin
        min = hui[count1]
        count2 = count2 + 1
        asl3 = a[count2]
        hui.push(min*asl3)
        count1 = count1 + 1
        count3 = count3 + 1
    end
    answer1 = answer1 - 2
    puts hui[answer1]
else
    puts "invalid input for 2. Please restart and try again"
end



