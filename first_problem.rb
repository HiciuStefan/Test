class FirstProblem


  def initialize(input_array)
    @numbers_array = input_array

  end

  def compute()
    sum = -1
    if @numbers_array.empty? then
      return sum
    end

    @numbers_array.each do |number|
      sum+= number if number.even?
    end
    sum +1

  end

end