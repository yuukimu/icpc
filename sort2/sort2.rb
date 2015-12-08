gets
data = gets.split(" ").map(&:to_i)
puts data.sort!.join(" ")