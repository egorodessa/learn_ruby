class Temperature

  def Temperature.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def Temperature.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def initialize(options = {})
    @fahrenheit = options[:f] || options[:c] * (9/5.to_f) + 32
    @celsius = options[:c] || (options[:f] - 32) * (5/9.to_f)
  end

  def in_celsius
    @celsius
  end

  def in_fahrenheit
    @fahrenheit
  end


  def Temperature.ctof(celsius)
    celsius * (9/5.to_f) + 32
  end

  def Temperature.ftoc(fahrenheit)
    (fahrenheit - 32) * (5/9.to_f)
  end
end


class Celsius < Temperature

  def initialize(celsius)
    super(c: celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(f: fahrenheit)
  end
end