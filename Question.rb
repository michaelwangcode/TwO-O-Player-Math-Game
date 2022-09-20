# This class creates question for the math game
class Question

  # Initialize values for question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = String(@num1 + @num2)
  end

  # Print a question
  def print_question(id)
    puts "Player #{id}: What does #{@num1} plus #{@num2} equal?"
  end

  # Check the answer for a question and return true or false
  def check_answer(answer)
    @sum == answer
  end

end