def towerBuilder(n)
  n.times.map{|f|
    floor = f + 1
    side_blank = ' ' *  (n - floor)
    center = '*' * (floor * 2 - 1 )
    side_blank + center + side_blank
  }
end

towerBuilder(3) # => ["  *  ", " *** ", "*****"]
