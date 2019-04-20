# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

# # もとの書き方
# def likes(names)
#   case names.length
#   when 0
#     "no one likes this"
#   when 1
#     "#{names[0]} likes this"
#   when 2
#     "#{names[0]} and #{names[1]} like this"
#   when 3
#     "#{names[0]},#{names[1]} and #{names[2]} like this"
#   else
#     "#{names[0]}, #{names[1]} and #{names.length - 2 } others like this"
#   end
# end

# テンプレート記法でいい感じにいける！
def likes(names)
  case names.length
  when 0
    "no one likes this"
  when 1
    "%s likes this" % names
  when 2
    "%s and %s like this" % names
  when 3
    "%s, %s and %s like this" % names
  else
    "%s, %s and #{names.length - 2 } others like this" % names # !> too many arguments for format string
  end
end




likes [] # => "no one likes this"
# // must be "no one likes this"
likes ["Peter"] # => "Peter likes this"
#  // must be "Peter likes this"
likes ["Jacob", "Alex"] # => "Jacob and Alex like this"
#  // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] # => "Max, John and Mark like this"
#  // must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] # => "Alex, Jacob and 2 others like this"
#  // must be "Alex, Jacob and 2 others like this"
