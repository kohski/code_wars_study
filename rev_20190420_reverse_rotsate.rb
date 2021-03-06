def revrot(str,sz)
  chunks = []
    return '' if sz == 0
  # 正規表現&scanで配列できるやん！
  chunks = str.scan(/.{#{sz}}/)
  chunks.map do |chunk|
    digits = chunk.chars
    # つまりこういうことって解釈はやめた方がよさげやな...
    sum = digits.map{|x| x.to_i ** 3 }.inject(&:+)
    sum.even? ? digits.reverse : digits.rotate
  end.join
end

# revrot("123456987654", 6)  # => "234561876549"
# # --> "234561876549"
# revrot("123456987654", 6) # => "234561876549"
# # --> "234561876549"
# revrot("123456987653", 6) # => "234561356789"
# # --> "234561356789"
# revrot("66443875", 4) # => "44668753"
# # --> "44668753"
# revrot("66443875", 8) # => "64438756"
# # --> "64438756"
# revrot("664438769", 8) # => "67834466"
# # --> "67834466"
# revrot("123456779", 8) # => "23456771"
# # --> "23456771"
# revrot("", 8) # => ""
# # --> ""
# revrot("123456779", 0) # => ""
# #  --> "" 
revrot("563000655734469485", 4) # => "0365065073456944"
# --> "0365065073456944"

