def has_digits?(str)
  str.count("0-9") > 0
end

def valid_number?(num)
  num.to_i() !=0
end

k = "I just want to dance 1"
puts k.to_i