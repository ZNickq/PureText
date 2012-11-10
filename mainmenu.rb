class MainMenuHandler < MenuHandler

  def initialize(main)
    @main = main
  end

  def show_menu
    puts "Logged in as: "+@main.user
    puts
    puts "Main Menu"
    puts
    puts "1) Show all questions"
    puts "2) Ask a question"
    puts
    puts "q) Quit"
    puts
    puts "Select an option: "
  end
  
  def on_option(op)
    if(op == "1")
        return QuestionListHandler.new(@main, self)
    end
    if(op == "2")
        return NewQuestionHandler.new(@main, self)
    end
    if(op == "q")
        return nil
    end
    return self
  end

end
