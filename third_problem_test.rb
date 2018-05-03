require 'test/unit'
require_relative'./third_problem'

class ThirdProblemTest < Test::Unit::TestCase

  def test_empty_input
    assert_false(ThirdProblem.new(Array.new).hasDuplicates)
  end

end