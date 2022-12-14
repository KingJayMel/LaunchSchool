def short_long_short(x, y)
  k = x.to_s.length
  c = y.to_s.length
  if k > c
    y + x + y
  elsif k < c
    x + y + x
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"