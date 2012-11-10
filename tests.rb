require 'test/unit'
require_relative 'question'
require_relative 'questionmenu'

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
    qh = QuestionHandler.new
    assert_nothing_raised do
        qh.show_menu
    end
  end
  
  def test_random_answer
    qh = QuestionHandler.new
    assert(!qh.is_valid_answer("tralala"))
  end
  
end

