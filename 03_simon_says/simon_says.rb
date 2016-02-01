def echo (say)
  case say
    when "hello"
      "hello"
    when "bye"
      "bye"
    end
end

def shout (say)
  say.upcase
end

def repeat ( say = "hello" , number = 2 )
  result = say
#  if number < 2 then number = 2 end
  ( number - 1 ).times do 
    result = result + " " + say
  end
  result
end

def start_of_word ( name , number )
  name[0,number]
end

def first_word (word)
  word.split.first
end

def titleize (name)
  lowercase_words = %w{a an the and but or for nor of over}
  
  name.split(" ").each_with_index.map{ |x, index| if ( lowercase_words.include?(x) && index > 0 ) then x else x.capitalize end }.join(" ")
end

