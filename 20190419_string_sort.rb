str = "is2 Thi1s T4est 3a"
ans = "Thi1s is2 3a T4est"
# "4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
# ""  -->  ""
arr = str.split(' ') # => ["is2", "Thi1s", "T4est", "3a"]
count = str.split(' ').length # => 4

ans = []
count.times do |elm|
  ans << arr.select{|n| n.include? (elm+1).to_s }
end 

ans.flatten.join(' ') # => "Thi1s is2 3a T4est"