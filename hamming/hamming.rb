module Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.size != str2.size

    arr1 = str1.split('')
    arr2 = str2.split('')
    
    count = 0
    arr1.each_with_index { |a, i| count += 1 if arr2[i] != a }
    count
  end
end
