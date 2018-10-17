words = ["I", "like", "elephants"]

#Convert all letters into numbers. Output individual words as arrays.
converted_words = words.map(&:chars).map { |letters| letters.map { |letter| letter.to_i 36 } }
puts converted_words.to_s
