class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix.split("\n")
  end

  def row(number)
    matrix[number - 1].split(" ").map { |n| n.to_i }
  end

  def column(number)
    matrix.map { |row| row.split(" ")[number - 1].to_i }
  end
end
