require 'benchmark'

result = Benchmark.realtime do
T = gets.to_i

T.times do
  ary_R = Array.new
  ary_G = Array.new
  ary_B = Array.new
  r_idx = 0
  g_idx = 0
  b_idx = 0 
  num = gets.chomp.split(' ').map(&:to_i)
  color = gets.chomp.split(' ')

  for i in 0..8
    case color[i]
    when 'R'
      ary_R[r_idx] = [num[i], color[i]]
      r_idx += 1
    when 'G'
      ary_G[g_idx] = [num[i], color[i]]
      g_idx += 1
    when 'B'
      ary_B[b_idx] = [num[i], color[i]]
      b_idx += 1
    end
  end

  set = 0
  data = [ ary_R.sort!, ary_G.sort!, ary_B.sort! ]

  data.each do |ary|
    next if ary.size < 3
    while true
      break if ary.size < 3
      card = ary.shift
      for i in 0...ary.size-1
        equal = 1
        snum = 1
        end_flag = 0
        case ary[i][0] - card[0]
        when 0
          equal += 1
        when 1
          snum += 1
        else
          break
        end

        for j in i+1...ary.size
          case ary[j][0] - card[0]
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