words = ["my","favorite","animals", "are", "the", "elephant", "and", "the", "antelope", "and", "the", "favela"]

#Convert all letters into numbers. Output individual words as arrays.
converted_words = words.map(&:chars).map { |letters| letters.map { |letter| letter.to_s  } }
puts converted_words.to_s

i = 1
x = 0
while i < converted_words.length
  if converted_words[i][0] < converted_words[i-1][0]
    converted_words[i], converted_words[i-1] = converted_words[i-1], converted_words[i]
    i = 1
  else
    i = i + 1
  end
end
puts converted_words.to_s

i = 1
x = 0
while i < converted_words.length
  if converted_words[i][x] != nil && converted_words[i-1][x] != nil
    puts converted_words[i].to_s
    puts converted_words[i-1].to_s
    puts
    if converted_words[i][x] < converted_words[i-1][x]
      converted_words[i], converted_words[i-1] = converted_words[i-1], converted_words[i]
      i = 1
      x = 0
    else
      if converted_words[i][x] == converted_words[i-1][x]
        x = x + 1
      else
        i = i + 1
        x = 0
      end
    end
  else
    if converted_words[i][x] == nil && converted_words[i-1][x] == nil
      i = i + 1
      x = 0
    else
      if converted_words[i][x] == nil
        converted_words[i], converted_words[i-1] = converted_words[i-1], converted_words[i]
        i = 1
        x = 0
      else
        i = i + 1
        x = 0
      end
    end
  end
end
puts converted_words.to_s
