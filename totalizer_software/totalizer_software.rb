require 'benchmark'

result = Benchmark.realtime do
loop do
  n = gets.to_i
  break if n == 0
  ary = Array.new(n)
  0.upto(n-1) do |i|
    ary[i] = gets.to_i
  end
  ary.sort!.shift
  ary.pop
  sum = ary.inject { |sum, n| sum + n}
  puts sum / ary.size
end
end
puts "処理概要 #{result}s"