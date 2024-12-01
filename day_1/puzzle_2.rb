# Ugly as well, should have used #inject but I'm time limited as hell
class Puzzle2
  file = File.open("input")
  left_array = []
  right_hash = Hash.new(0)

  file.each_line do |line|
    values = line.split.map(&:to_i)

    left_array << values[0]
    right_hash[values[1]] += 1
  end


  summary = left_array.map do |int|
    int * right_hash[int]
  end

  puts summary.sum
end
