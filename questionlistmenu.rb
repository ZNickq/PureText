class QuestionListHandler < MenuHandler

  @@questions = []

  def initialize(main, toRet)
    @main = main
    @toRet = toRet
  end
  
  def QuestionListHandler.add_question(qu)
    @@questions << qu
  end

  def show_menu
    puts "Logged in as: "+@main.user
    puts
    puts "Showing all questions:"
    puts 
    nr = 1
    @@questions.each { |x| 
      puts nr.to_s+") "+x.title
     }
    puts
    puts "m) Main Menu"
    puts "q) Quit"
    puts
    puts "Select an option: "
  end
  
  def on_option(op)
    nop = op.to_i
    if(nop != 0)
        return QuestionHandler.new(@@questions[nop-1], self, @main)
    end
    if(op == "m")
        return @toRet
    end
    if(op == "q")
        return nil
    end
    return self
  end

end
