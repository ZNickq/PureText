class Question
  def initialize
    @title = "NotSet"
    @body = "NotSet"
    @author = "NotSet"
    @votes = 0
    @answers = []
  end
  
  attr :title, true
  attr :body, true
  attr :author, true
  attr :votes, true
  attr :answers, true
  
end
