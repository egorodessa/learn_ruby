class Book
  attr_accessor :title
  def title=(name)
    lowercase_words = %w{a an the and but or for nor of over in}
  
    @title = name.split.each_with_index.map{ |x, index| if ( lowercase_words.include?(x) && index > 0 ) then x else x.capitalize end }.join(" ")
  
  end
end
