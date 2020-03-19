// Given two strings, write a method to decide if one is a permutation of the other

const isPermutation = (str1, str2) => {
  if (str1.length !== str2.length) return false;
  const map = {};

  for (let i=0; i<str1.length; i++) {
    const char1 = str1[i];
    const char2 = str2[i];
    map[char1] = (map[char1] !== undefined) ? map[char1]+1 : 1;
    map[char2] = (map[char2] !== undefined) ? map[char2]-1 : -1;
  }
  
  for (let num of Object.values(map)) {
    if (num !== 0) return false;
  }

  return true;
};
