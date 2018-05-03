class SecondProblem

  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1

  attr_reader :min_value

  def initialize(numbers_array)
    @numbers_array = numbers_array
    Struct.new("MinMax", :second_large, :first_large)
    @min_value = MIN
  end

  def get_numbers
    if @numbers_array.empty?
    then
      return Struct::MinMax.new(min_value, min_value)
    end

    first_large = min_value
    second_large = min_value
    @numbers_array.each do |number|
      if number > second_large then
        second_large = number
        if second_large > first_large
          temp = first_large
          first_large = second_large
          second_large = temp
        end
      end
    end

    Struct::MinMax.new(second_large, first_large)
  end

end
