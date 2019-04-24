def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?
  a1_min,a1_max = a1.map(&:length).minmax
  a2_min,a2_max = a2.map(&:length).minmax
  [a1_min - a2_max, a1_max - a2_min].map(&:abs).max
end

def mxdiflg2(a1,a2)
  return -1 if a1.empty? || a2.empty?
  a1.product(a2).map{|x, y| (x.length - y.length).abs }.max # => 13
end




a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
mxdiflg(a1, a2) # => 13
mxdiflg2(a1,a2) # => 13

