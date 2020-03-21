# Implement an algorithm to determine if a string has all unique characters

def unique? str
  [*'a'..'z', *'A'..'Z'].none? {|c| str.count(c) > 1}
end
