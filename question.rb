class Question
  def initialize
    @title = "NotSet"
    @body = "NotSet"
    @author = "NotSet"
    @votes = 0
    @answers = []
    @voters = []
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
