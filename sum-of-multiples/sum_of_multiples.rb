class SumOfMultiples
  def initialize(*base_values)
    @base_values = base_values
  end

  def to(level)
    return 0 if @base_values === [0]

    (1...level).select { |l| @base_values.any? { |v| l % v == 0 } }.sum
  end  
end
