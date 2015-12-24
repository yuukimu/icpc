while true
  n = gets.to_i
  break if n == 0
  ary = Array.new(n)
  ary[0] = 1
  (1..n).each do |i|
    ary[i] = ary[i-1]
    ary[i] += ary[i-2] if i > 1
    ary[i] += ary[i-3] if i > 2
  end
  # puts (ary[-1] / 3650.0).ceil
  puts ary.size
end