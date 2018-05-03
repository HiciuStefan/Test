class SecondProblem

  attr_reader :min_value

  def initialize(numbers_array)
    @numbers_array = numbers_array
    Struct.new("MinMax",:second_large, :first_large)
    @min_value=-1
  end

  def get_numbers
    if @numbers_array.empty?
    then
      return Struct::MinMax.new(min_value, min_value)
    end

    if @numbers_array.length == 1 then
      return Struct::MinMax.new(min_value, @numbers_array[0])
    end

    Struct::MinMax.new(0, 0)
  end

end
