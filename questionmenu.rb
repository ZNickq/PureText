class QuestionHandler < MenuHandler
  def initialize(q, toRet, main)
    @q = q
    @toRet = toRet
    @main = main
  end
  
  def show_menu
    puts "Logged in as: "+@main.user
    puts
    puts "Showing single question (and its answers, if there are any)"
    puts
    puts "Title: "+@q.title
    puts "Body: "+@q.body
    puts "Votes: "+@q.votes.to_s
    puts "Asked by "+@q.author
    puts
    #All answers
    puts
    puts "1) Upvote the question (not possible if you created it)"
    puts "1) Downvote the question (not possible if you created it)"
    puts "3) Provide an answer"
    puts "4) Select an answer to upvote/downvote"
    puts
    puts "m) Main menu"
    puts "q) Quit"
    puts
    puts "Select an option: "
  end
  
  def on_option(op)
    if(op == "1")
      if @q.author != @main.user
        if(@q.can_vote(@main.user))
          @q.votes += 1
        end
      end
    end
    if(op == "2")
      if @q.author != @main.user
        if @q.can_vote(@main.user)  
          @q.votes -= 1
        end
      end
    end
    if(op == "3")
    end
    if(op == "4")
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
