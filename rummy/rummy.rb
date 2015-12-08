require 'benchmark'

result = Benchmark.realtime do
T = gets.to_i

T.times do
  ary = Array.new(9)
  num = gets.chomp.split(' ').map(&:to_i)
  color = gets.chomp.split(' ')

  for i in 0..8
    ary[i] = [num[i], color[i]]
  end

  ary.sort!
  set = 0
  while true
    break if ary.size < 3
    card1 = ary.shift
    for i in 0...ary.size-1
      next if ary[i][1] != card1[1]
      end_flag = 0
      equal = 1
      snum = 1
      case ary[i][0] - card1[0]
      when 0
        equal += 1
      when 1
        snum += 1
      else
        break
      end

      for j in i+1...ary.size
        next if ary[j][1] != ary[i][1]
        case ary[j][0] - card1[0]
        when 0
          equal += 1
        when 2
          snum += 1
        else
          break
        end
        if equal == 3 || snum == 3
          set += 1
          ary.delete_at(ary.find_index(ary[i]))
          ary.delete_at(ary.find_index(ary[j-1]))
          end_flag = 1
          break
        end
      end
      break if end_flag == 1
    end
  end
  case set
    when 3
      puts 1
    else
      puts 0
  end
end
end
puts "処理概要 #{result}s"