f = File.read("./input.txt")

### Part 1
puts f.lines.map{ |line| (line.to_i / 3).floor - 2 }.inject(&:+)

### Part 2

fuels = f.lines.map do |line|
  mass_fuels = [(line.to_i / 3).floor - 2]

  while (mass_fuels.last / 3).floor - 2 >= 0
    mass_fuels << (mass_fuels.last / 3).floor - 2
  end

  mass_fuels.inject(&:+)
end

puts fuels.inject(&:+)
