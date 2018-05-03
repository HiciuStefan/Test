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

  def test_array_individual_highest
    array = [9, 7, 0, 1, 2, 3, 0, 1, 8]
    minMax = SecondProblem.new(array).get_numbers
    assert_equal(8, minMax[:second_large])
    assert_equal(9, minMax[:first_large])
  end



  def test_array_duplicate_highest
    array = [9, 7, 0, 1, 2, 3, 0, 1, 9]
    minMax = SecondProblem.new(array).get_numbers
    assert_equal(9, minMax[:second_large])
    assert_equal(9, minMax[:first_large])
  end
end