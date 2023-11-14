module ResistorColorDuo
  COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

  def self.value(numbers)
    a, b, *rest = numbers

    COLORS.index(a) * 10 + COLORS.index(b)
  end
end
