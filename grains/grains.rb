module Grains
  def self.square(number)
    raise ArgumentError.new("Square must be between 1 and 64.") if number < 1 || number > 64

    2 ** (number - 1)
  end

  def self.total
    2 ** 64 - 1
  end
end
