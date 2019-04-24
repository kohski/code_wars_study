def find(n)
  (1..n).select{|n| n % 5 == 0 || n % 3 == 0 }.sum
end
