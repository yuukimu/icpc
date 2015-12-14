T = gets.to_i

T.times do
  distance = []
  n, k = gets.chomp.split(' ').map(&:to_i) 
  x = gets.chomp.split(' ').map(&:to_i)
  if n <= k
    puts 0
  elsif n == 2
      puts x[1] - x[0]
  elsif k == 1
    puts x[-1] - x[0]
  else
    for i in 0...x.size-1
      distance << x[i+1] - x[i]
    end
    distance.sort!
    sum = x[-1] - x[0]
    (k-1).times do  
      sum -= distance.pop
    end
    print sum,"\n" 
  end
end