class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed >= 10
      success = 0.77
    elsif @speed >= 9
      success = 0.8
    elsif @speed >= 5
      success = 0.9
    else
      success = 1
    end
    
    (@speed * 221) * success
  end

  def working_items_per_minute
    (self.production_rate_per_hour / 60).to_i
  end
end