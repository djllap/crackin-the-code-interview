# Write an algorithm such that if an element in a MxN matrix
# is 0, its entire row and column are set to 0.

def matrixZero m
  rows = []
  cols = []

  (0..m.length-1).each { |row|
    (0..m[0].length-1).each { |col|
      if m[row][col] == 0 
        rows.push(row) unless rows.include?(m[row][col])
        cols.push(col) unless cols.include?(m[row][col])
      end
    }
  }

  (0..m.length-1).each { |row| 
    (0..m[0].length-1).each { |col| 
      if rows.include?(row) or cols.include?(col) 
        m[row][col] = 0
      end
    }
  }
  m
end

matrix = [
  [1, 1, 1, 1, 1, 1],
  [1, 0, 1, 1, 1, 1],
  [0, 1, 1, 1, 1, 1]

]

p matrixZero(matrix)