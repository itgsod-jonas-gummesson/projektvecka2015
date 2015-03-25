def setup
  require('colorize')

  $hejsan=0

  $dice1=rand(1..6)
  $dice2=rand(1..6)
  $dice3=rand(1..6)
  $dice4=rand(1..6)
  $dice5=rand(1..6)

  $keep1=0
  $keep2=0
  $keep3=0
  $keep4=0
  $keep5=0

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
  $player1=gets.chomp

  until $hejsan == 15
    $hejsan+=1
    runda
  end
end
def kasta
  puts 'Rolling dice...'
  if $keep1 ==0
    $dice1=rand(1..6)
    puts "Dice one rolled #{$dice1}"
  else
    puts "Dice one is still #{$dice1}"
  end
  if $keep2 ==0
    $dice2=rand(1..6)
    puts "Dice two rolled #{$dice2}"
  else
    puts "Dice two is still #{$dice2}"
  end
  if $keep3 ==0
    $dice3=rand(1..6)
    puts "Dice three rolled #{$dice3}"
  else
    puts "Dice three is still #{$dice3}"
  end
  if $keep4 ==0
    $dice4=rand(1..6)
    puts "Dice four rolled #{$dice4}"
  else
    puts "Dice four is still #{$dice4}"
  end
  if $keep5 ==0
    $dice5=rand(1..6)
    puts "Dice five rolled #{$dice5}"
  else
    puts "Dice five is still #{$dice5}"
  end
end
def keepies
  $keep=gets.chomp

  if $keep == 'one'
    if $keep1 == 0
      $keep1=1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep1 == 1
      $keep1=0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end
  end

  if $keep == 'two'
    if $keep2 == 0
      $keep2=1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep2 == 1
      $keep2=0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end
  end

  if $keep == 'three'
    if $keep3 == 0
      $keep3=1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep3 == 1
      $keep3=0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end
  end

  if $keep == 'four'
    if $keep4 == 0
      $keep4=1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep4 == 1
      $keep4=0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end
  end

  if $keep == 'five'
    if $keep5 == 0
      $keep5=1
      puts "Dice #{$keep} is being kept."
      keepies
    elsif $keep5 == 1
      $keep5=0
      puts "Dice #{$keep} is no longer being kept"
      keepies
    end
  end

  if $keep == 'roll'
  end

  if $keep != 'roll'
  puts 'That is not a valid input, valid inputs are the names of the dice (one, two, three, four, five).'
  puts 'Or type roll to roll the unkept dice. Typing the name of a kept dice will un-keep it.'
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

  puts 'Assign your throw to one of the above.'
  if $ones != 'Nan' and $twos != 'NaN' and $threes != 'NaN' and $fours != 'NaN' and $fives != 'NaN' and $sixes != 'NaN' and $ones+$twos+$threes+$fours+$fives+$sixes >= 63
    $bonus=50
  end
  $assign=gets.chomp
  $assign = $assign.upcase
  if $assign == 'ONES' and $ones == 'NaN'
    $ones=$resultat.count(1)
  elsif $assign == 'TWOS' and $twos == 'NaN'
    $twos=$resultat.count(2)*2
  elsif $assign == 'THREES' and $threes == 'NaN'
    $threes = $resultat.count(3)*3
  elsif $assign == 'FOURS' and $fours == 'NaN'
    $fours = $resultat.count(4)*4
  elsif $assign == 'FIVES' and $fives == 'NaN'
    $fives = $resultat.count(5)*5
  elsif $assign == 'SIXES' and $sixes == 'NaN'
    $sixes = $resultat.count(6)*6
  else
  puts 'Input not valid, pick one of the unassigned above.'
    assignment
  end
  $keep1=0
  $keep2=0
  $keep3=0
  $keep4=0
  $keep5=0
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
|_|  |__||_______||__| |__|  |___|  |_||_______||_______||_|  |__||______| |__|'.red.on_light_white.blink
end

setup
