# findNextSquare(121) --> returns 144
# findNextSquare(625) --> returns 676
# findNextSquare(114) --> returns -1 since 114 is not a perfect

def findNextSquare(sq)
  raw_length = Math.sqrt(sq)
  int_length = Math.sqrt(sq).floor
  raw_length - int_length == 0 ? int_length ** 2 : -1
end