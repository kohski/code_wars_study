def morse_decode(str)
  case str
  when '....'
    'H'
  when '.'
    'E'
  when '-.--'
    'Y'
  when '.---'
    'J'
  when '..-'
    'U'
  when '-..'
    'D'
  end
end

# morse_code = '.... . -.--   .--- ..- -.. .' # 'HEY JUDE
morse_code = ' .   .'
morse_code.strip # => ".   ."
str = morse_code.split('   ').map{|n| n.split(' ')}.map{|n| n.map{|m| morse_decode(m)}.join('')}.join(" ") # => "E E"

# ans = ""
# str.each do |n|
#   n.each do |m|
#     ans += morse_decode(m)
#   end
#   ans += " "
# end
ans


# ~> -:30:in `<main>': undefined local variable or method `ans' for main:Object (NameError)
# ~> Did you mean?  and