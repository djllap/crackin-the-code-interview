# Implement a method to perform basic string compression 
# using the counts of repeated characters. For instance,
# the string 'aabcccccaaa' would become 'a2b1c5a3'. If the
# compressed string would not become smaller than the original
# string, return the original string. You can assume the string 
# only has upper and lowercase letters a-z. 

def compress str 
  comp = ''
  currChar = str[0]
  i = 1
  count = 1

  while i < str.length
    if str[i] == currChar
      i += 1
      count += 1
    else
      comp += "#{currChar}#{count}"
      count = 0
      currChar = str[i]
      i += 1
    end
  end
  comp += "#{currChar}#{count+1}"
  
  str.length > comp.length ? comp : str
end

p compress('aaaabbbbbbbbcca')