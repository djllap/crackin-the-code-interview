// Given an image represented by a NxN matrix, where
// each pixel in the image is 4 bytes, write a method
// to rotate the image by 90 degrees. Can you do this in place?

const matrix = [
  [1,  2,  3,  4,   5],
  [6,  7,  8,  9,  10],
  [11, 12, 13, 14, 15],
  [16, 17, 18, 19, 20],
  [21, 22, 23, 24, 25]
];

const rotateMatrix = (m) => {
  let row = 0;
  
  while (row < m.length/2) {
    let col = 0;
    while (col < m[0].length/2) {
      const temp = m[row][col];
      console.log(temp);
      m[row][col] = m[col][row];
      m[col][row] = temp;
      col++;
    }
    row++;
  }
  return m;
};
console.log(matrix);
console.log(rotateMatrix(matrix));