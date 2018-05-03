require 'test/unit'
require_relative './second_problem'


class SecondProblemTest < Test::Unit::TestCase

  def test_empty_array
    array = {}
    min = -1
    minMax = SecondProblem.new(array).get_numbers
    assert_equal(min, minMax[:second_large])
    assert_equal(min, minMax[:first_large])
  end


end