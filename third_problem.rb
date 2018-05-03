class ThirdProblem
  def initialize(numbers_array)
    @numbers = numbers_array
  end

  def hasDuplicates
    found = false
    @numbers.each {|index|
      absolute_current_index =index.abs-1
      absolut_target_index = @numbers[absolute_current_index].abs-1
      target_value = @numbers[absolut_target_index]
      if target_value < 0
        found = true
        break
      end
      @numbers[absolut_target_index] = -target_value
    }
    found
  end

end


