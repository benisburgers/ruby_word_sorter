ignore = [("'a'".."'z'").to_a.join(",")]
alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

words = []
puts ("Type in as many words as you like to add to the array. Once you're ready, enter an empty line.")
input = gets.chomp
words.push input
while input.length > 0
  input = gets.chomp
  words.push input
end

sorted_words = []
alphabet.each do |letter|
  words.each do |word|
    if letter == word[0]
      sorted_words.push(word)
    end
  end
end
puts sorted_words
puts sorted_words.to_s

#sorted_words.each do |sub_array|
#  puts sub_array.split
#end
