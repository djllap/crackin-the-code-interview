// Implement an algorithm to determine if a string has all unique characters without using additional data structures.

const hasOnlyUniqueChars = (str) => {
  for (let i=0; i<str.length; i++) {
    const char = str[i];
    if (str.indexOf(char) !== str.lastIndexOf(char)) return false;
  }
  return true;
};
