# Assume you have a method substring?  which checks if one 
# word is a substring of another. Given two strings, s1 and 
# s2, write code to check if s2 is a rotation of s1 using only
# one call to substring?

def rotation? s1, s2
  substring?(s1*2, s2)
end
