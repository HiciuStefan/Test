require 'test/unit'
require_relative'./first_problem'

class FirstProblemTest < Test::Unit::TestCase

  def test_compute_empty_array_0
    array = Array.new
    assert_equal(-1,FirstProblem.new(array).compute)
  end

end