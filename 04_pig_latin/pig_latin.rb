def translate(sentence)
  
  vowels = %w{ a e i o u } 

  sentence.downcase.split.map { |word| 
    word.chomp!

    if word.length > 2 then
      # 1 vowels
      if vowels.include?(word[0,1]) then word + "ay"

        # 1 consonant + exception qu
        elsif word[0,2] == "qu" then word[2,word.length-1] + word[0,2] + "ay"
        elsif ( not vowels.include?(word[0,1]) ) && vowels.include?(word[1,1])
        word[1,word.length-1] + word[0,1] + "ay"

          # 2 consonants
          elsif ( not vowels.include?(word[0,1]) ) && ( not vowels.include?(word[1,1]) ) && vowels.include?(word[2,1]) then
          word[2,word.length-1] + word[0,2] + "ay"

            # 3 consonants + exception
            elsif ( not vowels.include?(word[0,3]) )
            word[3,word.length-1] + word[0,3] + "ay" end
              else 
                word 
    end
  }.join(" ")
end

puts translate("apple nix eat pie stupid three quiet school the quick brown fox")