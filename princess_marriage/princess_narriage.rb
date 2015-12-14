while true
  n, m = gets.chomp.split(' ').map(&:to_i)
  break if n == 0 && m == 0
  data = []
  n.times do
    d, p = gets.chomp.split(' ').map(&:to_i)
    data << [ p, d ]
  end
  data.sort!

  while true
    d = data[-1][1]
    if m > d
      m -= d
      data.pop
    elsif m == d
      data.pop
      break
    elsif m < d
      data[-1][1] -= m
      break
    end 
    break if data.size == 0
  end

  sum = 0
  data.each do |ary|
    sum += ary[0] * ary[1]
  end
  puts sum
end
