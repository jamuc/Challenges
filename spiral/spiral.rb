# Creates a spiral 2D array for a specified number n
# n = 3 
# 1, 2, 3
# 8, 9, 4
# 7, 6, 5
def spiral(n)
  array = Array.new(n) { Array.new(n, 0) }
  fillArray(array, number: n)
  array.each do |row|
	puts(row.join(','))
  end
end

def fillArray(array, startIndex: 0, number: 0, counter: 1)
  return if number == 0
  endIndex = number - 1

  # Do the top row
  (startIndex..endIndex).each do |index|
	array[startIndex][index] = counter
	counter = counter + 1
  end

  # Do the end column
  ((startIndex + 1)..endIndex).each do |index|
	array[index][endIndex] = counter
	counter = counter + 1
  end

  # Do the bottom row
  (endIndex - 1).downto(startIndex).each do |index|
	array[endIndex][index] = counter
	counter = counter + 1
  end

  # Do the first column
  (endIndex - 1).downto(startIndex + 1).each do |index|
	array[index][startIndex] = counter
	counter = counter + 1
  end

  # Call next recursive iteration
  fillArray(array, startIndex: startIndex + 1, number: number - 1, counter: counter)
end
