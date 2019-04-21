def revrot(str,sz)
  chunks = []
  if sz == 0
    return ''
  end
  str.length.div(sz).times do |num|
    start_digit = num * sz
    end_digit = (num+1) * sz - 1
    chunks << str[start_digit..end_digit]
  end
  answer = []
  chunks.each{|n|
    if rotate?(n)
      answer << rotate(n)
    else
      answer << n.reverse
    end
  }
  answer.join
end

def rotate?(str)
  str.chars.map{|n| n.to_i}.count{|n| n.odd?}.odd?
end

def rotate(str)
  head_char = str[0]
  str_last_index = str.length - 1
  str[1..str_last_index] + head_char
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
# revrot("563000655734469485", 4) # => "0365065073456944"
# --> "0365065073456944"
