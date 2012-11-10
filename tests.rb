require 'test/unit'
require_relative 'question'

class Tests < Test::Unit::TestCase
  def test_invalid_question
    question = Question.new
    assert_nothing_raised do
        test = question.title + "made by "+question.author
        puts test
    end
  end
end

