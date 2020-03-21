# Write a method to replace all spaces in a string with '%20'. 
# You may assume that the string has sufficient space at the 
# end of the string to hold the extra characters, and that you
# are given the 'true' length of the string
#
# EXAMPLE
# input: 'Mr John Smith    ', 13
# output: Mr%20John%20Smith

def urlize str, len
  (0..str.length-1).each {|i| 
    if str[i] == ' ' 
      j = str.length - 1
      while j > i + 2
        str[j] = str[j-2];
        j -= 1
      end
      str[i] = '%'
      str[i+1] = '2'
      str[i+2] = '0'
    end
  }
  str
end
