array1 = ["live","arp", "strong"]
array2 = ["lively", "alive", "harp", "sharp", "armstrong"]

r = []
array1.each do |sub_string|
  array2.each do |word|
    if n.include? m
      r << m
      break;
    end
  end
end
r.sort!
r # => ["arp", "live", "strong"]

array1.map do |sub_string|
  array2.any? do |word|
    word.include? sub_string
  end
end
