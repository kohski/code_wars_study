def mxdiflg(a1, a2)
  return if a1.empty? or a2.empty?

  a1_max,a1_min = maxmin(a1)
  a2_max,a2_min = maxmin(a2)

  cand1 =  (a1_max - a2_min).abs
  cand2 =  (a2_max - a1_min).abs

  cand1 > cand2 ? cand1 : cand2

end

def maxmin(array)
  [
    array.map{|elm| elm.length }.max,
    array.map{|elm| elm.length }.min
  ]
end


a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
mxdiflg(a1, a2) # => 13
