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

  def test_no_duplicates
    arrayNumbers = [1,2,3,4,5,6,7]
    assert_false(ThirdProblem.new(arrayNumbers).hasDuplicates)
  end
end