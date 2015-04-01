def setup
  require('colorize')

  $hejsan = 0

  $tjena = 0

  $dice1 = rand(1..6)
  $dice2 = rand(1..6)
  $dice3 = rand(1..6)
  $dice4 = rand(1..6)
  $dice5 = rand(1..6)

  $keep1 = 0
  $keep2 = 0
  $keep3 = 0
  $keep4 = 0
  $keep5 = 0

  $ones = 'NaN'
  $twos = 'NaN'
  $threes = 'NaN'
  $fours = 'NaN'
  $fives = 'NaN'
  $sixes = 'NaN'
  $sum = 'NaN'
  $bonus = 'NaN'
  $pair = 'NaN'
  $pair2 = 'NaN'
  $kind3 = 'NaN'
  $kind4 = 'NaN'
  $house = 'NaN'
  $s_str = 'NaN'
  $l_str = 'NaN'
  $yahtzee = 'NaN'
  $chance = 'NaN'
  $total = 'NaN'

  def protokoll
    puts "
PLAYERS:   #{$player1}
ONES:      #{$ones}
TWOS:      #{$twos}
THREES:    #{$threes}
FOURS:     #{$fours}
FIVES:     #{$fives}
SIXES:     #{$sixes}
SUM:       #{$sum}
BONUS:     #{$bonus}
PAIR:      #{$pair}
2-PAIR:    #{$pair2}
3-KIND:    #{$kind3}
4-KIND:    #{$kind4}
HOUSE:     #{$house}
S-STR:     #{$s_str}
L-STR:     #{$l_str}
YAHTZEE:   #{$yahtzee}
CHANCE:    #{$chance}
TOTAL:     #{$total}"
  end

  puts '
 __     __      _    _ _______ ____________ ______
 \ \   / //\   | |  | |__   __|___  /  ____|  ____|
  \ \_/ //  \  | |__| |  | |     / /| |__  | |__
   \   // /\ \ |  __  |  | |    / / |  __| |  __|
    | |/ ____ \| |  | |  | |   / /__| |____| |____
    |_/_/    \_\_|  |_|  |_|  /_____|______|______|'.red.on_light_white

  sleep(1)
  puts '
Input Player name.'
  $player1 = gets.chomp

  until $hejsan == 15
    $hejsan += 1
    runda
  end
end
def kasta
  puts 'Rolling Dice...'
  if $keep1 == 0
    $dice1 = rand(1..6)
    puts "Dice one rolled #{$dice1}"
  else
    puts "Dice one is still #{$dice1}"
  end
  if $keep2 == 0
    $dice2 = rand(1..6)
    puts "Dice two rolled #{$dice2}"
  else
    puts "Dice two is still #{$dice2}"
  end
  if $keep3 == 0
    $dice3 = rand(1..6)
    puts "Dice three rolled #{$dice3}"
  else
    puts "Dice three is still #{$dice3}"
  end
  if $keep4 == 0
    $dice4 = rand(1..6)
    puts "Dice four rolled #{$dice4}"
  else
    puts "Dice four is still #{$dice4}"
  end
  if $keep5 == 0
    $dice5 = rand(1..6)
    puts "Dice five rolled #{$dice5}"
  else
    puts "Dice five is still #{$dice5}"
  end
end
def keepies
  $keep = gets.chomp

  if $keep == 'one' or $keep == '1'
    if $keep1 == 0
      $keep1 = 1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep1 == 1
      $keep1 = 0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end

  elsif $keep == 'two' or $keep == '2'
    if $keep2 == 0
      $keep2 = 1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep2 == 1
      $keep2 = 0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end

  elsif $keep == 'three' or $keep == '3'
    if $keep3 == 0
      $keep3 = 1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep3 == 1
      $keep3 = 0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end

  elsif $keep == 'four' or $keep == '4'
    if $keep4 == 0
      $keep4 = 1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep4 == 1
      $keep4 = 0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end

  elsif $keep == 'five' or $keep == '5'
    if $keep5 == 0
      $keep5 = 1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep5 == 1
      $keep5 = 0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end

  elsif $keep == 'all'
    $keep1 = 1
    $keep2 = 1
    $keep3 = 1
    $keep4 = 1
    $keep5 = 1

  elsif $keep == 'roll'

  else
    puts 'That is not a valid input, valid inputs are the names of the Dice (one, two, three, four, five).'
    puts 'Type \'all\' to keep all at once'
    puts 'Type roll to roll the unkept Dice. Typing the name of a kept Dice will un-keep it.'
    keepies
  end
end
def resultaten
  $resultat = []
  $resultat << $dice1
  $resultat << $dice2
  $resultat << $dice3
  $resultat << $dice4
  $resultat << $dice5
end
def assignment

  protokoll
  puts 'Assign your throw to one of the above.'
  if $ones != 'Nan' and $twos != 'NaN' and $threes != 'NaN' and $fours != 'NaN' and $fives != 'NaN' and $sixes != 'NaN' and $ones+$twos+$threes+$fours+$fives+$sixes >= 63
    $bonus = 50
  end
  $assign = gets.chomp
  $assign = $assign.upcase
  if $assign == 'ONES' or $assign == 'ONE' and $ones == 'NaN'
    $ones = $resultat.count(1)

  elsif $assign == 'TWOS' or $assign == 'TWO' and $twos == 'NaN'
    $twos = $resultat.count(2)*2

  elsif $assign == 'THREES' or $assign == 'THREE' and $threes == 'NaN'
    $threes = $resultat.count(3)*3

  elsif $assign == 'FOURS' or $assign == 'FOUR' and $fours == 'NaN'
    $fours = $resultat.count(4)*4

  elsif $assign == 'FIVES' or $assign == 'FIVE' and $fives == 'NaN'
    $fives = $resultat.count(5)*5

  elsif $assign == 'SIXES' or $assign == 'SIX' and $sixes == 'NaN'
    $sixes = $resultat.count(6)*6

  elsif $assign == 'PAIR' or $assign == 'PEAR' and $pair == 'NaN'
    if $resultat.count(6) > 1
      $pair = 12
    elsif $resultat.count(5) > 1
      $pair = 10

    elsif $resultat.count(4) > 1
      $pair = 8

    elsif $resultat.count(3) > 1
      $pair = 6

    elsif $resultat.count(2) > 1
      $pair = 4

    elsif $resultat.count(1) > 1
      $pair = 2

    else
      $pair = 0
    end

  elsif $assign == '2-PAIR' and $pair2 == 'NaN'
    if $resultat.count(6) > 1
      $pair2 = 12
      $tjena = 6

    elsif $resultat.count(5) > 1
      $pair2 = 10
      $tjena = 5

    elsif $resultat.count(4) > 1
      $pair2 = 8
      $tjena = 4

    elsif $resultat.count(3) > 1
      $pair2 = 6
      $tjena = 3

    elsif $resultat.count(2) > 1
      $pair2 = 4
      $tjena = 2

    elsif $resultat.count(1) > 1
      $pair2 = 2
      $tjena = 1
    end

    if $resultat.count(6) > 1 and $tjena != 6
      $pair2 += 12

    elsif $resultat.count(5) > 1 and $tjena != 5
      $pair2 += 10

    elsif $resultat.count(4) > 1 and $tjena != 4
      $pair2 += 8

    elsif $resultat.count(3) > 1 and $tjena != 3
      $pair2 += 6

    elsif $resultat.count(2) > 1 and $tjena != 2
      $pair2 += 4

    elsif $resultat.count(1) > 1 and $tjena != 1
      $pair2 += 2

    else
      $pair2 = 0
    end

  elsif $assign == '3-KIND' and $kind3 == 'NaN'
    if $resultat.count(6) > 2
      $kind3 = 18
    elsif $resultat.count(5) > 2
      $kind3 = 15

    elsif $resultat.count(4) > 2
      $kind3 = 12

    elsif $resultat.count(3) > 2
      $kind3 = 9

    elsif $resultat.count(2) > 2
      $kind3 = 6

    elsif $resultat.count(1) > 2
      $kind3 = 3

    else
      $kind3 = 0
    end

  elsif $assign == '4-KIND' and $kind4 == 'NaN'
    if $resultat.count(6) > 3
      $kind4 = 24
    elsif $resultat.count(5) > 3
      $kind4 = 20

    elsif $resultat.count(4) > 3
      $kind4 = 16

    elsif $resultat.count(3) > 3
      $kind4 = 12

    elsif $resultat.count(2) > 3
      $kind4 = 8

    elsif $resultat.count(1) > 3
      $kind4 = 4

    else
      $kind4 = 0
    end

  elsif $assign == 'HOUSE' and $house == 'NaN'
    if $resultat.count(6) > 2
      $house = 18
      $tjena = 6

    elsif $resultat.count(5) > 2
      $house = 15
      $tjena = 5

    elsif $resultat.count(4) > 2
      $house = 12
      $tjena = 4

    elsif $resultat.count(3) > 2
      $house = 9
      $tjena = 3

    elsif $resultat.count(2) > 2
      $house = 6
      $tjena = 2

    elsif $resultat.count(1) > 2
      $house = 3
      $tjena = 1

    else
      $house = 0

    end

    if $resultat.count(6) > 1 and $tjena != 6
      $house += 12

    elsif $resultat.count(5) > 1 and $tjena != 5
      $house += 10

    elsif $resultat.count(4) > 1 and $tjena != 4
      $house += 8

    elsif $resultat.count(3) > 1 and $tjena != 3
      $house += 6

    elsif $resultat.count(2) > 1 and $tjena != 2
      $house += 4

    elsif $resultat.count(1) > 1 and $tjena != 1
      $house += 2

    end

  elsif $assign == 'S-STR' and $s_str == 'NaN'
    if $resultat.count(1) == 1 and $resultat.count(2) == 1 and $resultat.count(3) == 1 and $resultat.count(4) == 1 and $resultat.count(5) == 1
      $s_str = 15
    else
      $s_str = 0
    end

  elsif $assign == 'L-STR' and $l_str == 'NaN'
    if $resultat.count(2) == 1 and $resultat.count(3) == 1 and $resultat.count(4) == 1 and $resultat.count(5) == 1 and $resultat.count(6) == 1
      $l_str = 20
    else
      $l_str = 0
    end

  elsif $assign == 'YAHTZEE' and $yahtzee == 'NaN'
    if $resultat.count(1) == 5 or $resultat.count(2) == 5 or $resultat.count(3) == 5 or $resultat.count(4) == 5 or $resultat.count(5) == 5 or $resultat.count(6) == 5
      $yahtzee = 50
    else
      $yahtzee = 0
    end

  elsif $assign == 'CHANCE' and $chance == 'NaN'
    $chance = $resultat.count(1).to_i + $resultat.count(2).to_i*2 + $resultat.count(3).to_i*3 + $resultat.count(4).to_i*4 + $resultat.count(5).to_i*5 + $resultat.count(6).to_i*6

  else
    puts 'Input not valid, pick one of the unassigned above.'
    assignment
  end

  $sum = $ones.to_i + $twos.to_i + $threes.to_i + $fours.to_i + $fives.to_i + $sixes.to_i
  $total = $sum.to_i + $bonus.to_i + $pair.to_i + $pair2.to_i + $kind3.to_i + $kind4.to_i + $house.to_i + $s_str.to_i + $l_str.to_i + $yahtzee.to_i + $chance.to_i


  $keep1 = 0
  $keep2 = 0
  $keep3 = 0
  $keep4 = 0
  $keep5 = 0
  $tjena = 0

  protokoll
end
def runda
  kasta
  keepies
  kasta
  keepies
  kasta
  resultaten
  assignment
  puts '
 __    _  _______  _     _    ______    _______  __   __  __    _  ______   __
|  |  | ||       || | _ | |  |    _ |  |       ||  | |  ||  |  | ||      | |  |
|   |_| ||    ___|| || || |  |   | ||  |   _   ||  | |  ||   |_| ||  _    ||  |
|       ||   |___ |       |  |   |_||_ |  | |  ||  |_|  ||       || | |   ||  |
|  _    ||    ___||       |  |    __  ||  |_|  ||       ||  _    || |_|   ||__|
| | |   ||   |___ |   _   |  |   |  | ||       ||       || | |   ||       | __
|_|  |__||_______||__| |__|  |___|  |_||_______||_______||_|  |__||______| |__|
'.red.on_light_white.blink
end

setup


