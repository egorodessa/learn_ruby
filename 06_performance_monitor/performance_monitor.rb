def measure(a = 1)
 sumtime = 0
 a.times do 
  start_time = Time.now
  yield
  end_time = Time.now
  sumtime += end_time - start_time  
 end
 sumtime / a
end

puts measure(10) { 1.to_s }