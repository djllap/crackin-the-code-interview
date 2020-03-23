// Given an image represented by a NxN matrix, where
// each pixel in the image is 4 bytes, write a method
// to rotate the image by 90 degrees. Can you do this in place?

const m = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12], 
  [13, 14, 15, 16]
]

const rotateMatrix = (m) => {
  let min = 0;
  let max = m.length-1;
  while (min < max && max >= m.length/2) {
    let dif = 0;
    while (dif+min < max) {
      const temp1 = m[min][min+dif];
      const temp2 = m[min+dif][max];
      const temp3 = m[max][max-dif];
      const temp4 = m[max-dif][min];

      m[min][min+dif] = temp2;
      m[min+dif][max] = temp3;
      m[max][max-dif] = temp4;
      m[max-dif][min] = temp1;
      
      dif++;
    }
    min++;
    max--;
  }
  return m;
};
console.log(rotateMatrix(m));