module CollatzConjecture
  def self.steps(n)
    raise ArgumentError if n <= 0

    steps = 0

    while n != 1
      n = n.even? ? n / 2 : 3 * n + 1
      steps += 1
    end

    steps
  end
end
