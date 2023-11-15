class ResistorColorTrio
  attr_reader :colors

  COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

  def initialize(colors)
    @colors = colors
  end

  def label
    a, b, c = colors

    value = (COLORS.index(a) * 10 + COLORS.index(b)) * (10 ** COLORS.index(c))
    unit = 'ohms'

    if value.digits.count >= 4
      value /= 10 ** 3
      unit = 'kiloohms'
    end
    
    "Resistor value: #{value} #{unit}"
  end
end
