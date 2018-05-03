require 'test/unit'
require_relative './second_problem'


class SecondProblemTest < Test::Unit::TestCase

  def test_empty_array
    array = {}
    max_max = SecondProblem.new(array)
    minMax = max_max.get_numbers
    assert_equal(max_max.min_value, minMax[:second_large])
    assert_equal(max_max.min_value, minMax[:first_large])
  end

  def test_one_number_array
    array = [0]
    max_max = SecondProblem.new(array)
    minMax = max_max.get_numbers
    assert_equal(max_max.min_value, minMax[:second_large])
    assert_equal(0, minMax[:first_large])
  end


end