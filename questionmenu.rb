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
    hm = @q.answers
    hm.each_pair do |k,v|
      puts v.id.to_s+") Author: "+v.author
      puts "Answer: "+v.ans
      puts "Votes: "+v.votes.to_s
    end
    puts
    puts "1) Upvote the question (not possible if you created it)"
    puts "1) Downvote the question (not possible if you created it)"
    puts "3) Provide an answer"
    puts "4) Select an answer to upvote/downvote"
    puts
    puts "m) Main question list"
    puts "q) Quit"
    puts
    puts "Select an option: "
  end
  
  def add_answer(nq)
    @q.add_answer(nq)
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
      return AnswerMenuHandler.new(@main, self)
    end
    if(op == "4")
      puts "Choose answer: "
      ansId = Integer(gets.chomp)
      puts "Choose whether to upvote or downvote(+/-): "
      ansV = gets.chomp
      @q.vote_answer(ansId, ansV)
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
