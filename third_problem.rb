class ThirdProblem
  def initialize(numbers_array)
    @numbers = numbers_array
  end

  def hasDuplicates
    if @numbers.length < 2
      return false
    end

    true
  end


end
