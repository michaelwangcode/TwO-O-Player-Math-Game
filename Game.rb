# This class keeps track of the game and prints messages
class Game

  # Initializer and attributes for game
  def initialize
    @player_1 = Player.new(1)
    @player_2 = Player.new(2)
  end

  # Start new game
  def start
    # Start the first turn
    next_turn
  end

  # Print how many lives each player has
  def print_lives
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  # Check if either player has 0 lives left
  def check_if_game_is_over
    if @player_1.has_died
      print_winner(@player_2)
    elsif @player_2.has_died
      print_winner(@player_1)
    end
  end

  # Print the winner and end the game
  def print_winner(player)
    puts "Player #{player.id} wins with the score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts 'Good bye!'
    exit
  end

  # Execute actions for one turn of the game
  def next_turn

    # Ask player 1 a question, checks answer and prints lives
    @player_1.ask_question
    check_if_game_is_over
    print_lives
    puts "----- NEW TURN -----"

    # Ask player 2 a question, checks answer and prints lives
    @player_2.ask_question
    check_if_game_is_over
    print_lives
    puts "----- NEW TURN -----"

    # Move to the next turn
    next_turn
  end

end