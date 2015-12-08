def square(ary_h, ary_w)
  count = 0
  start_h = start_w = 0

  while true
    h_sum = 0
    for i in start_h...ary_h.size
      w_sum = 0
      h_sum += ary_h[i]
      while true
        w_sum = 0
        for j in start_w...ary_w.size
          w_sum += ary_w[j]
          if h_sum == w_sum
            count += 1
            break
          elsif h_sum < w_sum
              break
          end
        end
        start_w += 1
        break if start_w >= ary_w.size
      end
      start_w = 0
    end
    start_h += 1
    break if start_h >= ary_h.size
  end

  return count
end

data = []
idx = 0

filename = "icpc3.txt"
file = File.open(filename, "r:utf-8") do |f|
  f.each_line do |line|
    data << line
  end
end

while true
  ary_h = []
  ary_w = []
  h, w = data[idx].split(" ")
  break if h.to_i == 0 && w.to_i == 0 
  idx += 1
  for i in 0...h.to_i
    ary_h << data[idx].to_i
    idx += 1
  end

  for i in 0...w.to_i
    ary_w << data[idx].to_i
    idx += 1
  end

  puts square(ary_h, ary_w)
end
