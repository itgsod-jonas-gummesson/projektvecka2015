$dice1=rand(1..6)
$dice2=rand(1..6)
$dice3=rand(1..6)
$dice4=rand(1..6)
$dice5=rand(1..6)
keep1=0
keep2=0
keep3=0
keep4=0
keep5=0
puts "Dice one rolled #{dice1}
Dice two rolled #{dice2}
Dice three rolled #{dice3}
Dice four rolled #{dice4}
Dice five rolled #{dice5}
---"

def first_keep
  puts 'Which dice would you like to keep? Type the number of the dice to keep it, type roll to roll again. (one / two / three / four / five / roll)'
  keep=gets.chomp


  if keep == 'one'
    keep1=1
    puts "Dice #{keep} is being kept."
    first_keep
  elsif keep == 'two'
    keep2=1
    puts "Dice #{keep} is being kept."
    first_keep
  elsif keep == 'three'
    keep3=1
    puts "Dice #{keep} is being kept."
    first_keep
  elsif keep == 'four'
    keep4=1
    puts "Dice #{keep} is being kept."
    first_keep
  elsif keep == 'five'
    keep5=1
    puts "Dice #{keep} is being kept."
    first_keep
  elsif keep == 'roll'

  else
    puts 'That is not a valid input...'
    first_keep
  end
end
first_keep
puts 'Rolling the non kept dice.'
if keep1 ==1
  $dice1=rand(1..6)
elsif keep2 ==1
  $dice2=rand(1..6)
elsif keep3 ==1
  $dice3=rand(1..6)
elsif keep4 ==1
  $dice4=rand(1..6)
elsif keep5 ==1
  $dice5=rand(1..6)
end