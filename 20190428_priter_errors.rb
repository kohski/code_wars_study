def error_printer(s)
  "#{s.chars.count{|n| ('a'..'z').to_a.index(n) > 12}}/#{s.length}"
end

def get_index(alp)
  ('a'..'z').to_a.index(alp) > 12
end



s="aaabbbbhaijjjm"
error_printer(s) # => "0/14"
#  "0/14"

s="aaaxbbbbyyhwawiwjjjwwm"
error_printer(s) # => "8/22"
#8/22"



