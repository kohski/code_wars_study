text = "The sunset sets at twelve o' clock."
# alp = text.downcase.gsub('/[ .\']/','').chars # => ["t", "h", "e", " ", "s", "u", "n", "s", "e", "t", " ", "s", "e", "t", "s", " ", "a", "t", " ", "t", "w", "e", "l", "v", "e", " ", "o", "'", " ", "c", "l", "o", "c", "k", "."]
# ans = []
# ans_s =[]
# alp.each do |n|
#   ans <<  ('a'..'z').to_a.index(n).to_i + 1
# end
# ans.join(' ') # => "20 8 5 1 19 21 14 19 5 20 1 19 5 20 19 1 1 20 1 20 23 5 12 22 5 1 15 1 1 3 12 15 3 11 1"


text.downcase.gsub(/[^a-z]/,'').chars.map{|n| ('a'..'z').to_a.index(n).to_i + 1}.join(' ') # => "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"