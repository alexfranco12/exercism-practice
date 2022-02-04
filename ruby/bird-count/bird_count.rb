class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds = birds_per_day
  end

  def yesterday
    @birds[@birds.length - 2]
  end

  def total
    @birds.sum
  end

  def busy_days
    busy_days = @birds.select { |day| day >= 5 }
    busy_days.length
  end

  def day_without_birds?
    @birds.any? { |day| day == 0 }
  end
end

p BirdCount.last_week

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
p bird_count.yesterday

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
p bird_count.total

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
p bird_count.busy_days

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
p bird_count.day_without_birds?