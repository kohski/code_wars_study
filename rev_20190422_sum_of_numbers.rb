def get_sum(a,b)
  a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end

get_sum(1,3) # => 6
get_sum(-1,3) # => 5
get_sum(-1,-3) # => -6
get_sum(1,1) # => 1