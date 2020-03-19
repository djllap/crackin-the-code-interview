// Implement a method to perform basic string compression 
// using the counts of repeated characters. For instance,
// the string 'aabcccccaaa' would become 'a2b1c5a3'. If the
// compressed string would not become smaller than the original
// string, return the original string. You can assume the string 
// only has upper and lowercase letters a-z. 

function compressStr(str) {
  if (!str.length) return str;

  let currChar = str[0];
  let currCount = 1;
  let comp = '';
  let i = 1;

  while(i < str.length) {
    if (str[i] === currChar) {
      currCount++;
    } else {
      comp += `${currChar}${currCount+1}`;
      currCount = 0;
      currChar = str[i];
    }
    i++;
  }
  if (currCount) comp += `${currChar}${currCount}`;

  return (str.length <= comp.length) ? str : comp;
}

console.log(compressStr('ljnaeflknaefeeeeeeeeeeeeeeee'));