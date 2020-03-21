# Implement an algorithm to determine if a string has all 
# unique characters without using additional data structures.

def unique? string
  string.each_char{|c| return false if string.index(c) != string.rindex(c)}
  true
end
