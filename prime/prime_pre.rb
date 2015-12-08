require 'prime'

while n = gets.chomp.to_i
  ary = []
  (2..n).each do |i|
    ary << i
  end

  count = 0
  while true
    break if ary.size == 0
    num = ary.shift
    count += 1 if num.prime?
    ary.delete_if{ |i| i % num == 0 }
  end
  puts count
end