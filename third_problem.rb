class ThirdProblem
  def initialize(numbers_array)
    @numbers = numbers_array
  end

  def hasDuplicates
    if @numbers.length < 2
      return false
    end

    found = false
    @numbers.each {|index|
      absolute_current_index =index.abs-1
      absolut_target_index = @numbers[absolute_current_index].abs-1
      if @numbers[absolut_target_index] < 0
        found = true
        break
      end
      @numbers[absolut_target_index] = -@numbers[absolut_target_index]
    }
    found
  end

end


