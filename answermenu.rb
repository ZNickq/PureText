class AnswerMenuHandler < MenuHandler
  def initialize(main, toRet)
    @main = main
    @toRet = toRet
  end
  
  def on_option(op)
    an = Answer.new
    an.ans = op
    an.author = @main.user
    @toRet.add_answer(an)
    return @toRet
  end
  
  def show_menu
    puts "Provide an answer: "
  end
  
end
