def towerBuilder(n_floors)
  ans = []
  n_floors.times do |floor|
    side_blank = ' '*(n_floors - (floor+1))
    center = '*' * (2 * (floor + 1) -1)
    ans << side_blank + center + side_blank
  end
  ans
end

towerBuilder(3) # => ["  *  ", " *** ", "*****"]
