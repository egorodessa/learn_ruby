def translate(sentence)
  
  vowels = %w{ a e i o u } 

  sentence.downcase.split(" ").each { |word| 
    puts word

    if word.length > 2 then
      case word 

        # 1 vowels
        when vowels.include?(word[0,1])
          puts word + "ay"

        # 1 consonant + exception qu
        when ( not vowels.include?(word[0,1]) ) && vowels.include?(word[1,1])
          if word[0,1] == "qu" then puts word[1,word.length-1] + word[0,1] + "ay"
          else puts word[1,word.length-1] + word[0,1] + "ay" end

        # 2 consonants
        when ( not vowels.include?(word[0,1]) ) && ( not vowels.include?(word[1,1]) )
          puts word[2,word.length-1] + word[0,2] + "ay"

        # 3 consonants + exception
        when ( not vowels.include?(word[0,3]) )
          puts word[3,word.length-1] + word[0,3] + "ay"

      #end
      else puts "else case" end
    else 
      puts "elsif "
      word end
  }.join(" ")
end

puts translate("my Apple and eggs")