def find_short(s)
  s.split(' ').map(&:length).min
end

find_short("bitcoin take over the world maybe who knows perhaps") # => 3
