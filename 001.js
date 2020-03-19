// Implement an algorithm to determine if a string has all unique characters

const hasOnlyUniqueChars = (str) => {
  const map = {};

  for (let i=0; i<str.length; i++) {
    const char = str[i];
    if (map[char]) return false;
    map[char] = true;
  }

  return true;
};
