#e = gets.to_i

data = []
filename = "icpc2.txt"
file = File.open(filename, "r:utf-8") do |f|
  f.each_line do |line|
    data << line.to_i
  end
end

data.each do |e|
  break if e == 0
  x_max = e
  y_max = e**(1.0 / 2.0)
  z_max = e**(1.0 / 3.0)
  min = e
  for z in 0..z_max.to_i
    for y in 0..y_max.to_i
      break if y**2 + z**3 > e
      x = e - y**2 - z**3
      break if x < 0
      sum = x + y + z
      min = sum if sum < min
    end
  end
  puts min
end