require 'test/unit'
require_relative'./first_problem'

class FirstProblemTest < Test::Unit::TestCase

  def test_compute_empty_array_0
    array = Array.new
    assert_equal(-1,FirstProblem.new(array).compute)
  end

  def test_compute_noEvenNumbersArray_0
    array = [1,3,5,7]
    assert_equal(0,FirstProblem.new(array).compute)
  end

end