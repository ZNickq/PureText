require_relative 'menu'
require_relative 'question'

class QuestionHandler < MenuHandler
  def initialize
    
  end
  
  def show_menu
    puts "Question menu!"
  end
  
  def is_valid_answer(op)
    return op.is_a? Integer || op == "q" || op == "m"
  end
  
end
