class NewQuestionHandler < MenuHandler

  def initialize(main, toRet)
    @main = main
    @toRet = toRet
  end

  def show_menu
    puts "Ask a question: "
  end
  
  def on_option(op)
    nq = Question.new
    nq.title = op
    nq.body = "How to do that?"
    nq.author = @main.user
    QuestionListHandler.add_question(nq)
    return @toRet
  end

end
