N, K, T, U, V, L = gets.chomp.split(' ').map(&:to_f)

time =  0.0
stock = 0
distance = 0.0
b_time = 0

d = gets.to_f
t = d / U
distance += t * U
time += t
b_time = T

(N.to_i - 1).times do
  d = gets.to_f
  stock += 1 if distance - d >= 0 && stock < K && b_time > 0
  puts stock
  if b_time == 0 && stock > 0
    b_time = T
    stock -= 1
  end
  case b_time
  when 0
    t = (d - distance) / U
    distance += t * U
    time += t
    b_time = T
  else
    while b_time > 0
      distance += V
      b_time -= 1
      time += 1.0
    end
  end
end

t = (L - distance) / U
time += t
distance += t * U
puts sprintf("%.9f", time)