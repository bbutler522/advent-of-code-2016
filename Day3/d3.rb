puts File.read('input3.txt').strip.each_line.count {|line|
  a, b, c = *line.strip.split.map(&:to_i)
  a + b > c and a + c > b and b + c > a
}