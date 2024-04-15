class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    numbers = (2..limit).to_a
    marked = numbers.map {|n| (n * 2..limit).step(n).to_a}.flatten
    numbers.select {|n| !marked.include?(n)}
  end
end
