class FirstProblem


  def initialize(input_array)
    @numbers_array = input_array

  end

  def compute()
    sum = 0
    @numbers_array.each do |number|
      sum+= number if number.even?
    end
    sum

  end

end