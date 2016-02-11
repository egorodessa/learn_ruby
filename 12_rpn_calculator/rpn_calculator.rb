class RPNCalculator
  attr_accessor :Calculator

  
  def initialize(arr = [])
    @arr_number = arr
  end
  
  def push(number)
    @arr_number << number
  end

  def minus
    @arr_number << @arr_number.pop - @arr_number.pop
  end

  def plus
    @arr_number << @arr_number.pop + @arr_number.pop
  end

  def value
    @arr_number[-1]
  end

  def times
    @arr_number << @arr_number.pop * @arr_number.pop
  end

  def divide
    @arr_number << @arr_number.pop.to_f / @arr_number.pop.to_f
  end
  def pop
    number = @arr_number.pop
    if number.nil? 
      "calculator is empty"
    end
    number
  end



end

test = RPNCalculator.new
test.push(3)
test.push(7)
test.push(7)
test.divide
puts test.value
test.plus
puts test.value