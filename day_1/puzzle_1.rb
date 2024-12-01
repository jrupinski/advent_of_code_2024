# ugly ugly ugly
class Puzzle1
  left, right = [], []
  file = File.open("input")

  file.each_line do |line|
    values = line.split.map(&:to_i)
    left << values[0]
    right << values[1]

    left.sort!
    right.sort!
  end

  differences = []

  (0...left.count).each do |i|
    differences << (left[i] - right[i]).abs
  end

  puts differences.sum
end
