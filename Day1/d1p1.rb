def change_state(xstate, d)
  directions = "NESW"
  i = "NESW".index(xstate)
  if d == "R"
    directions[i+1] ? directions[i+1] : "N"
  else
    directions[i-1] ? directions[i-1] : "W"
  end
end

current = {x: 0, y: 0}
state = "N" # Start facing North

array = File.read("input1.txt").split(", ").map(&:strip) # Reads input and splits each direction into an array

array.each do |d|
  dir = d[0]
  steps = d[1..-1]
  steps = steps.to_i
  state = change_state(state, dir)
  if state == "N"
    current[:y] = current[:y] + steps
  elsif state == "E"
    current[:x] = current[:x] + steps
  elsif state == "S"
    current[:y] = current[:y] - steps
  elsif state == "W"
    current[:x] = current[:x] - steps
  end
end

blocks = current[:x]  + current[:y]
blocks = blocks.abs.to_s
puts "Easter Bunny HQ is " + blocks + " Blocks Away"