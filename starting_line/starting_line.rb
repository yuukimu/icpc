N, K, T, U, V, L = gets.chomp.split(' ').map(&:to_f)
d = []
N.to_i.times do
  d << gets.to_f
end

time =  0.0
boost = 0
stock = 0

t = d.shift / U
distance = t * U
time += t
boost = 1
b_time = T

while true
  case boost
  when 0
    puts d[0]
    t = (d.shift - distance) / U
    puts "t = #{t}"
    distance += t * U
    time += t
    boost = 1
    b_time = T
  when 1
    distance += V
    b_time -= 1
    time += 1.0
    boost = 0 if b_time == 0
    if d.size > 0
      if distance - d[0] >= 0 && distance - d[0] <= V
        stock += 1 if stock < K
      end
    end
  end
  if boost == 0 && stock > 0
    d.shift
    boost = 1
    b_time = T
    stock -= 1
  end
  puts "distance=#{distance}"
  break if d.size == 0 && b_time == 0
end

t = (L - distance) / U
time += t
distance += t * U
puts sprintf("%.9f", time)