require 'benchmark'

result = Benchmark.realtime do
9.times do |x|
  9.times do |y|
    puts "#{x+1}x#{y+1}=#{(x+1)*(y+1)}"
  end
end
end
puts "処理概要 #{result}s"