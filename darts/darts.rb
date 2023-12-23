class Darts
  attr_reader :x, :y

  RADIUS = { 'inner' => 1, 'middle' => 5, 'outer' => 10 }

  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    distance = Math.sqrt(x ** 2 + y ** 2)

    if distance <= RADIUS['inner']
      10
    elsif distance <= RADIUS['middle']
      5
    elsif distance <= RADIUS['outer']
      1
    else
      0
    end
  end
end
