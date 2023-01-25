famous_words = "seven years ago..."

puts "Four score and " + famous_words

word_added = "Four Score and "
famous_split = famous_words.split
words_split = word_added.split

final_split = words_split.concat(famous_split)

final = final_split.join" "

puts final