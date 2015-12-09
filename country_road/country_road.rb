T = gets.to_i

T.times do
  distance = []
  place = []
  n, k = gets.chomp.split(' ').map(&:to_i) 
  x = gets.chomp.split(' ').map(&:to_i)
  for i in 0...x.size-1
    distance << x[i+1] - x[i]
  end
  p = 0
  while true
    break if k == 0
    idx = distance.find_index(distance.max)
    if p == idx
  end
  print place,"\n" 
end