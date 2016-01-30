def add (first,second)
  first + second
end

def subtract (first,second)
  first - second
end

def sum (arr)
  
  sum = 0
  if not arr.empty? then arr.each { |value| sum = sum + value } end

  return sum
  
end
