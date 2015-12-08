#require 'benchmark'

#result = Benchmark.realtime do
loop do
  e = gets.to_i
  break if e == 0
  y_max = (e**(1.0 / 2.0)).round
  z_max = (e**(1.0 / 3.0)).round
  min = e
  z_max.downto(0) do |z|
    z3 = z ** 3
    next if z3 > e
    y = Math.sqrt(e-z3).to_i
    y2 = y ** 2
    x = e - y2 -z3
    # 0.upto(y_max) do |y|
    #   x = e - y**2 - z**3
    #   break if x < 0
       sum = x + y + z
       min = sum if sum < min
    # end
  end
  puts min
end
#end
#puts "処理概要 #{result}s"