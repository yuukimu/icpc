N, K, T, U, V, L = gets.split.map(&:to_f)
 
time = 0.0
distance = 0.0
stock = 0
restTime = 0.0
N.to_i.times do
  d = gets.to_f
  t = (d - distance) / V
  while true do
    break if restTime >= t || stock == 0
    restTime += T
    stock -= 1
  end
  if restTime >= t
    restTime -= t
    time += t
  else
    time += restTime
    time += (d - distance - V * restTime) / U
    restTime = 0.0
  end
  distance = d
 
  if stock < K
    stock += 1
  else
    restTime = T
  end
end
 
t = (L - distance) / V
while true do
  break if restTime > t || stock == 0
  restTime += T
  stock -= 1
end
if restTime >= t
  restTime -= t
  time += t
else
  time += restTime
  time += (L - distance - V * restTime) / U
  restTime = 0.0
end
distance = L
 
p time