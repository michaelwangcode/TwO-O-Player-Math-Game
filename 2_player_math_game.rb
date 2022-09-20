# Create a 2-Player math game where players take turns to answer simple math addition problems.
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Game written without using classes

game_on = true
player_turn = 1

player_1_lives = 3
player_2_lives = 3


while game_on

  p "----- NEW TURN -----"

  num1 = rand(1..20)
  num2 = rand(1..20)
  sum = String(num1 + num2)

  p "Player #{player_turn}: What does #{num1} plus #{num2} equal?"
  print "> "
  input = gets.chomp
  
  if input != sum
    p "Player #{player_turn}: Seriously? No!"
    if player_turn == 1
      player_1_lives -= 1
    elsif player_turn == 2
      player_2_lives -= 1
    end
  else
    p "Player #{player_turn}: YES! You are correct."
  end
  
  p "P1: #{player_1_lives}/3 vs P2: #{player_2_lives}/3"

  if player_turn == 1
    player_turn = 2
  elsif player_turn == 2
    player_turn = 1
  end
  
  if player_1_lives == 0
    p "Player 2 wins with a score of #{player_2_lives}"
    p "----- GAME OVER -----"
    p "Good bye!"
    game_on = false
  elsif player_2_lives == 0
    p "Player 1 wins with a score of #{player_1_lives}"
    p "----- GAME OVER -----"
    p "Good bye!"
    game_on = false
  end

 end