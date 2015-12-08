def prime(p)
  if p == 2 || p == 3
    return true
  end
  for n in 2..Math.sqrt(p).to_i
    return false if p % n == 0
  end
  return true
end

while line = gets
  num = line.chop.to_i
  ary = []
  for i in 2..num
    ary << i
  end
  count = 0
  while true
    break if ary.size == 0
    p = ary.shift
    if prime(p)
      count += 1
    end
    ary.delete_if{ |i| i % p == 0 }
  end
  puts count
end
