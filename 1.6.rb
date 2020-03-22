# Given an image represented by a NxN matrix, where
# each pixel in the image is 4 bytes, write a method
# to rotate the image by 90 degrees. Can you do this in place?

def rotate matrix 
  min = 0;
  max = matrix.length-1

  while min < max and max >= matrix.length/2
    dif = 0
    while min + dif < max
      t1 = matrix[min][min+dif]
      t2 = matrix[min+dif][max]
      t3 = matrix[max][max-dif]
      t4 = matrix[max-dif][min]
       
      matrix[min][min+dif] = t4
      matrix[min+dif][max] = t1
      matrix[max][max-dif] = t2
      matrix[max-dif][min] = t3

      dif += 1
    end
    min += 1
    max -= 1
  end
  matrix
end

m = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12], 
  [13, 14, 15, 16]
]

p rotate(m)
