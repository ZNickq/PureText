require 'test/unit'
require_relative 'menu'
require_relative 'question'
require_relative 'loginmenu'
require_relative 'questionmenu'
require_relative 'questionlistmenu'
require_relative 'newquestionmenu'
require_relative 'mainmenu'

class Tests < Test::Unit::TestCase
  def test_null_question
    question = Question.new
    assert_nothing_raised do
        test = question.title + " made by "+question.author
    end
  end
  
  def test_new_question
    question = Question.new
    question.title = "What's TDD?"
    assert_equal(question.title, "What's TDD?")
  end
  
  def test_question_handler
    qh = NewQuestionHandler.new(nil, nil)
    assert_nothing_raised do
        qh.show_menu
    end
  end
  
  def test_twice_vote
    qh = Question.new
    qh.can_vote("ZNickq")
    assert(!qh.can_vote("ZNickq"))
  end
  
end

