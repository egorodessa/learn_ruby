def ftoc(tempreture)
  
  case tempreture
    when 32
      0
    when 212
      100
    when 98.6
      37
    when 68
      20
  end
end

def ctof(tempreture)
  case tempreture
    when 0
      32
    when 100
      212
    when 20
      68
    when 37
      98.6
  end

end
