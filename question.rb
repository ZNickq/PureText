class Question
  def initialize
    @title = "NotSet"
    @body = "NotSet"
    @author = "NotSet"
    @votes = 0
    @answers = Hash.new
    @voters = []
  end
  
  def add_answer(nq)
    @answers[nq.author] = nq
  end
  
  def vote_answer(voteId, voteV)
    answers.each_pair do |k,v|
      if answers[k].id == voteId
        if voteV == "+"
          answers[k].votes += 1
        end
        if voteV == "-"
          answers[k].votes -= 1
        end
      end
    end
  end
    
  def can_vote(user)
    if @voters.include?(user)
      return false
    end
    @voters << user
    return true
  end
  
  attr :title, true
  attr :body, true
  attr :author, true
  attr :votes, true
  attr :answers, true
  
end

class Answer

  @@id = 0
  
  def initialize
    @author = "Unknown"
    @ans = "-"
    @votes = 0
    @@id = @@id+1
    @id = @@id
  end
  
  attr :votes, true
  attr :author, true
  attr :ans, true
  attr :id, true
  
end
