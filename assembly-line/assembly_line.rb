class AssemblyLine
  PRODUCTION_NUM_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def success_rate
    if @speed >= 1 && @speed <= 4
      1.0
    elsif @speed >= 5 && @speed <= 8
      0.9
    elsif @speed == 9
      0.8
    else
      0.77
    end
  end

  def production_rate_per_hour
    PRODUCTION_NUM_PER_HOUR * @speed * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
