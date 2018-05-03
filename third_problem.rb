class ThirdProblem
  def initialize(numbers_array)
    @numbers = numbers_array
  end

  def hasDuplicates
    if @numbers.length == 0
      return false
    end
    if @numbers.length == 1
      return false
    end
    true
  end


end
