module BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError.new("Input base must be >= 2") if input_base < 2
    
    raise ArgumentError.new("All digits must satisfy 0 <= d < input base") if digits.any? {|d| d < 0 || d >= input_base}

    raise ArgumentError.new("Output base must be >= 2") if output_base < 2

    return [0] if digits.empty? || digits.all? {|d| d == 0}

    number = digits.reverse.map.with_index {|d, i| d * input_base ** i}.sum

    result = []

    while number > 0
      result.unshift(number % output_base)
      number /= output_base
    end

    result
  end
end
