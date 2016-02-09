class Friend
  def greeting( name = "")
    if name == "" then "Hello!" 
    else "Hello, #{name}!" end
  end
end
puts Friend.new.greeting("Egor")