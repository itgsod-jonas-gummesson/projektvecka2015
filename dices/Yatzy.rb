def setup
  require('colorize')
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
TOTAL:     #{$total}
       "
  puts 'Assign your throw to one of the above.'
  $assign=gets.chomp
  $assign = $assign.upcase
  if $assign == 'ONES' and $ones == 'unassigned'
    $ones=$resultat.count(1)
  elsif $assign == 'TWOS' and $twos == 'unassigned'
    $twos=$resultat.count(2)*2


  else
  puts 'Input not valid, pick one of the unassigned above.'
  end

end

puts '
 __     __      _    _ _______ ____________ ______
 \ \   / //\   | |  | |__   __|___  /  ____|  ____|
  \ \_/ //  \  | |__| |  | |     / /| |__  | |__
   \   // /\ \ |  __  |  | |    / / |  __| |  __|
    | |/ ____ \| |  | |  | |   / /__| |____| |____
    |_/_/    \_\_|  |_|  |_|  /_____|______|______|'.red.on_light_white

sleep(1)
puts 'Input Player name.'
$player1=gets.chomp

kasta
keepies
kasta
keepies
kasta
resultaten
assignment

puts $assign