class Squares
  attr_reader :nums

  def initialize(num)
    @nums = (1..num).to_a
  end

  def square_of_sum
    nums.sum ** 2
  end

  def sum_of_squares
    nums.sum {|n| n ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
