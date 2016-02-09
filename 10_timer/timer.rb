class Timer
  attr_accessor :seconds, :timer


  def initialize( seconds = 0 )
    @seconds = seconds
  end
  def time_string
    
    t = Time.at( @seconds ).utc.to_s[-12,8]

  end
end

puts Timer.new(625).time_string