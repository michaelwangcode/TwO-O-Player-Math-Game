# This class keeps track of the players in the game
class Player

  attr_reader :id, :lives

  # Initialize user
  def initialize (id)
    @id = id
    @lives = 3
  end

  # Take a life when player answers question wrong
  def lose_life
    @lives -= 1
  end

  # Check if the player has no lives left
  def has_died
    @lives == 0
  end

  # Asks the player a question and gets input
  def ask_question

    # Create a question and get input
    question = Question.new
    question.print_question(id)
    print "> "
    input = gets.chomp

    # Check the input and print a response
    if question.check_answer(input)
      puts "Player #{id}: YES! You are correct."
    else
      puts "Player #{id}: Seriously? No!"
      lose_life
    end

  end
  
end