filename = "sampleInput.txt"
data = []
file = File.open(filename, "r:utf-8") do |f|
  f.each_line do |line|
    data << line.to_i
  end
end

idx = 0

while idx < data.size
  ary = []
  sum = 0
  n = data[idx]
  break if n == 0
  idx += 1
  for i in idx...(idx+n)
    ary << data[i]
  end
  idx += n
  ary.delete_at(ary.find_index(ary.max))
  ary.delete_at(ary.find_index(ary.min))
  ary.each do |x|
    sum += x
  end
  puts "-----------------"
  puts sum / ary.size
end

exit(1)