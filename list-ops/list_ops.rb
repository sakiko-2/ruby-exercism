module ListOps
  def self.arrays(arrays)
    count = 0
    arrays.each { count += 1 }
    count
  end

  def self.reverser(array)
    length = arrays(array)
    copy = array
    i = 0
    j = length - 1

    while i < j
      temp = copy[i]
      array[i] = array[j]
      array[j] = temp
      i += 1
      j -= 1
    end

    array
  end

  def self.concatter(*arrays)
    result = []
    arrays.each { |a| a.each { |el| result << el } }
    result
  end

  def self.mapper(array)
    result = []
    array.each { |n| result << yield(n)}
    result
  end

  def self.filterer(array, &block)
    result = []
    array.each { |n| result << n if block.call(n) }
    result
  end

  def self.sum_reducer(array)
    result = 0
    array.each { |n| result += n }
    result
  end

  def self.factorial_reducer(array)
    result = 1
    array.each { |n| result *= n }
    result
  end
end
