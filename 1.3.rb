# Given two strings, write a method to decide if one is a permutation of the other

def isPermutation? str1, str2
  str1.length == str2.length and str1.sum == str2.sum
end
