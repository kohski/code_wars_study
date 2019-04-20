# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

# もとの回答
# def unique_in_order(iterable)
#   # 後置ifとis_a?(String)でスッキリ書ける
#   if iterable.class == String
#     iterable = iterable.chars
#   end

#   prev = ""
#   annswer_array = []
#   iterable.each do |elm|
#     if prev != elm
#       annswer_array << elm
#       prev = elm
#     end
#   end
#   annswer_array 
# end

def unique_in_order2(iterable)
  iterable = iterable.chars if iterable.is_a?(String)
  answer = []
  iterable.each do |elm|
    answer << elm if answer.last != elm
  end
  answer
end

unique_in_order2('AAAABBBCCDAABBB') # => ["A", "B", "C", "D", "A", "B"]
unique_in_order2([1,2,2,3,3]) # => [1, 2, 3]
