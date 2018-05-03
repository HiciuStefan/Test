require 'test/unit'
require_relative'./third_problem'

class ThirdProblemTest < Test::Unit::TestCase

  def test_empty_input
    assert_false(ThirdProblem.new(Array.new).hasDuplicates)
  end

  def test_one_item_input
    arrayNumbers = [1]
    assert_false(ThirdProblem.new(arrayNumbers).hasDuplicates)
  end
end