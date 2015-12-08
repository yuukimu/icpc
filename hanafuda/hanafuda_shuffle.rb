require 'benchmark'

result = Benchmark.realtime do
while true
  n, r = gets.chomp.split(' ').map(&:to_i)
  break if (n | r) == 0
  
  ary = Array.new(n)
  (n).downto(1) do |i|
    ary[n-i] = i
  end

  r.times do 
    p, c = gets.chomp.split(' ').map(&:to_i)
    del = ary.slice!(p-1, c)
    ary = del + ary
  end
  puts ary[0]
end
end
puts "処理概要 #{result}s"