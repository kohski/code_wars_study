
def findNextSquare(sq)
  length = Math.sqrt(sq)
  length % 1 == 0 ? (length+1) ** 2 : -1
end