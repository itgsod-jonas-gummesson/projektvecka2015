require 'colorize'
# randoms = 1000000
#
# diff3 = 0
#
# randoms.times do
#   dice1 = rand(1..6)
#   dice2 = rand(1..6)
#
#   if (dice1-dice2).abs == 3
#     diff3 += 1
#
#   end
#
# end
#
#
# puts diff3/randoms.to_f

diff3 = 0

(1..6).each do |dice1|
  (1..6).each do |dice2|
    if (dice1-dice2).abs == 4
      diff3 += 1
      print "#{dice1},#{dice2} ".red
    else
      print "#{dice1},#{dice2} ".blue
    end
  end
  puts
end

puts diff3/36.0
