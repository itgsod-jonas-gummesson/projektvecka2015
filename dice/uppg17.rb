require 'colorize'

# 1000000 = 1000000
# diff3 = 0
# diff = 3
#
# randoms.times do |n|
#
#   dice1=rand(1..6)
#   dice2=rand(1..6)
#
#   if (dice1-dice2).abs == diff
#     diff3 += 1
#   end
#
# end
#
# res = diff3/randoms.to_f
#
# puts res
#
# puts 1/res


def diceschema()

  diffs = 0


  (1..6).each do |dice1|
    (1..6).each do |dice2|
        if (dice1-dice2).abs == 3
          print "#{dice1},#{dice2} ".red
        else
          print "#{dice1},#{dice2} ".blue
        end
    end
    puts
  end
end

diceschema()
