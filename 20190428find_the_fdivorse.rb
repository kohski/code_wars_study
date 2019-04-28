def divisors(n)
  (2..(n-1)).select{|elm| n % elm == 0}.empty? ? "#{n} is prime" : (2..(n-1)).select{|elm| n % elm == 0}
end

divisors(13); # => 
# ~> -:2: syntax error, unexpected ':', expecting end
# ~> ... == 0}.empty? "#{n} is prime" : (2..(n-1)).select{|elm| n % ...
# ~> ...                              ^