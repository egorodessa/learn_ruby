def reverser
  words = yield
  result = []

  words.split.map { |word| result << word.reverse }
  result.join(" ")
end


def adder ( number = 1 )
  yield + number
end

def repeater ( number = 1 )
  number.times do 
    yield
  end
end

puts reverser { "hello world" }
puts adder(2) {5}
repeater(4) { puts "mumu"}