array.length == 0? 'even' : array.inject(:+).even? ? 'even' : 'odd' # => "even"

