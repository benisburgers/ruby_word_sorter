    words = ["my","favorite","animals", "are", "the", "elephant", "and", "the", "antelope", "and", "the", "favela"]
    puts words.to_s
    #Convert all letters into numbers. Output individual words as arrays.
    ordered_words = words.map(&:chars).map { |letters| letters.map { |letter| letter } }

    i = 1
    x = 0
    while i < ordered_words.length
      if ordered_words[i][x] != nil && ordered_words[i-1][x] != nil
        if ordered_words[i][x] < ordered_words[i-1][x]
          ordered_words[i], ordered_words[i-1] = ordered_words[i-1], ordered_words[i]
          i = 1
          x = 0
        else
          if ordered_words[i][x] == ordered_words[i-1][x]
            x = x + 1
          else
            i = i + 1
            x = 0
          end
        end
      else
        if ordered_words[i][x] == nil && ordered_words[i-1][x] == nil
          i = i + 1
          x = 0
        else
          if ordered_words[i][x] == nil
            ordered_words[i], ordered_words[i-1] = ordered_words[i-1], ordered_words[i]
            i = 1
            x = 0
          else
            i = i + 1
            x = 0
          end
        end
      end
    end

    joined_words = []
    ordered_words.each do |word|
      joined_words.push(word.join)
    end
    puts joined_words.to_s
