# This class creates question for the math game
class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = String(@num1 + @num2)
  end

  def print_question(id)
    puts "Player #{id}: What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer(answer)
    return @sum == answer
  end

end