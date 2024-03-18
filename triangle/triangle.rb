class Triangle
  attr_reader :sides, :a, :b, :c

  def initialize(sides)
    @sides = sides
    @a, @b, @c = sides
  end

  def equilateral?
    triangle? && sides.uniq.length == 1
  end

  def isosceles?
    triangle? && sides.uniq.length <= 2
  end

  def scalene?
    triangle? && sides.uniq.length == 3
  end

  def triangle?
    sides.all? {|side| side > 0} && a + b >= c && a + c >= b && b + c >= a
  end
end
