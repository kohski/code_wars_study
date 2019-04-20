Input = ["Ryan", "Kieran", "Jason", "Yous"]
Output = ["Ryan", "Yous"]

Input.select{|n| n.length == 4 } # => ["Ryan", "Yous"]

