
  class Dictionary
    attr_accessor :entries 
  
    def initialize (entries = {})
      @entries = entries
    end
   
    def add (hach)
      if hach.class == Hash then
       @entries.merge!(hach)
     else
       @entries.merge!({hach => nil})
     end
   end
 
   def keywords
     @entries.keys.sort 
   end
 
   def include? (keyword)
     @entries.has_key?(keyword)
   end
 
   def find (something)
 
     result = {}
     entries.each do |key, value|
       if key =~ /^#{something}/
         result[key] = value
       end
     end
     result
 
   end
 
   def printable
     
     result = []
 
     @entries.sort.map { |key, value| result <<  "[#{key}] \"#{value}\"" }
     
     result.join("\n")
   end
 end
 
 man = Hash.new
 man = {"man" => 1}
 puts man.class
 news = Dictionary.new(man)
 
 news.add("fuck")
 news.add({ "you" => 3 })
 puts news.entries
 
 puts news.keywords.to_s
 
 puts news.find("man")
 puts news.printable 