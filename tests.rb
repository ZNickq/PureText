require 'test/unit'
require_relative 'question'

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
end

