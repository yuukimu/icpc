loop do
  n, m = gets.chomp.split.map(&:to_i)
   
  if (n | m) == 0
    break
  end
 
  h = Array.new(n)
  w = Array.new(m)
 
  0.upto(n - 1) do |i|
    h[i] = gets.chomp.to_i
  end
   
  0.upto(m - 1) do |i|
    w[i] = gets.chomp.to_i
  end
 
  c_w = Array.new(1500 * 1000 + 1, 0)
 
  0.upto(m - 1) do |i|
    sum = w[i]
    c_w[sum] += 1
    (i + 1).upto(m - 1) do |j|
      sum += w[j]
      c_w[sum] += 1
    end
  end
 
  ans = 0
 
  0.upto(n - 1) do |i|
    sum = h[i]
    ans += c_w[sum]
    (i + 1).upto(n - 1) do |j|
      sum += h[j]
      ans += c_w[sum]
    end
  end
 
  puts ans
end