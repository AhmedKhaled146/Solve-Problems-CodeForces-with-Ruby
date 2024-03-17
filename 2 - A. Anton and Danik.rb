# A. Anton and Danik
# time limit per test: 1 second
# memory limit per test: 256 megabytes
# inputstandard input
# outputstandard output
# Anton likes to play chess, and so does his friend Danik.
#   Once they have played n games in a row. For each game it's known who was the winner — Anton or Danik. None of the games ended with a tie.
# Now Anton wonders, who won more games, he or Danik? Help him determine this.
# Input
# The first line of the input contains a single integer n (1≤n≤100000) — the number of games played.
# The second line contains a string s, consisting of n uppercase English letters 'A' and 'D' — the outcome of each of the games. The i-th character of the string is equal to 'A' if the Anton won the i-th game and 'D' if Danik won the i-th game.
# Output
# If Anton won more games than Danik, print "Anton" (without quotes) in the only line of the output.
# If Danik won more games than Anton, print "Danik" (without quotes) in the only line of the output.
# If Anton and Danik won the same number of games, print "Friendship" (without quotes).
# Examples
# input
# 6
# ADAAAA
# output
# Anton
# input
# 7
# DDDAADA
# output
# Danik
# input
# 6
# DADADA
# output
# Friendship
# Note
# In the first sample, Anton won 6 games, while Danik — only 1. Hence, the answer is "Anton".
# In the second sample, Anton won 3 games and Danik won 4 games, so the answer is "Danik".
# In the third sample, both Anton and Danik won 3 games and the answer is "Friendship".


###############
# Solution # Three Solutions for this problem
###############

def determine_winner(games_outcome)
  anton_wins = games_outcome.count('A')
  danik_wins = games_outcome.count('D')

  if anton_wins > danik_wins
    return "Anton"
  elsif anton_wins < danik_wins
    return "Danik"
  else
    return "Friendship"
  end
end

# Read input
n = gets.chomp.to_i
games_outcome = gets.chomp

# Determine the winner
puts determine_winner(games_outcome)


################################################

n = gets.chomp.to_i
games_outcome = gets.chomp

nA = games_outcome.count('A')
nD = games_outcome.count('D')

if nA > nD
  puts "Anton"
elsif nA < nD
  puts "Danik"
else
  puts "Friendship"
end

######################################

nA = 0
nD = 0

number_games = gets.chomp.to_i
strings = gets.chomp.upcase

strings.chars.each do |char|
  if char == 'A'
    nA += 1
  elsif char == 'D'
    nD += 1
  end
end

if nA > nD
  puts "Anton"
elsif nA < nD
  puts "Danik"
else
  puts "Friendship"
end


