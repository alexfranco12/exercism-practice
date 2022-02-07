=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge
  MERCURY_ORBITAL_PERIOD = 0.2408467
  VENUS_ORBITAL_PERIOD = 0.61519726
  EARTH_ORBITAL_PERIOD = 1.0
  MARS_ORBITAL_PERIOD = 1.8808158
  JUPITER_ORBITAL_PERIOD = 11.862615
  SATURN_ORBITAL_PERIOD = 29.447498
  URANUS_ORBITAL_PERIOD = 84.016846
  NEPTUNE_ORBITAL_PERIOD = 164.79132

  def initialize(seconds)
    @years_on_earth = seconds/60/60/24/365.25
    
  end

  # TODO: Need to dry up this code..
  # Given an age in seconds, calculate how old someone 
  # would be on a given planet.
  def on_earth
    @years_on_earth.round(2)
  end

  def on_mercury
    (@years_on_earth / MERCURY_ORBITAL_PERIOD).round(2)
  end

  def on_venus
    (@years_on_earth / VENUS_ORBITAL_PERIOD).round(2)
  end

  def on_mars
    (@years_on_earth / MARS_ORBITAL_PERIOD).round(2)
  end

  def on_jupiter
    (@years_on_earth / JUPITER_ORBITAL_PERIOD).round(2)
  end

  def on_saturn
    (@years_on_earth / SATURN_ORBITAL_PERIOD).round(2)
  end

  def on_uranus
    (@years_on_earth / URANUS_ORBITAL_PERIOD).round(2) 
  end

  def on_neptune
    (@years_on_earth / NEPTUNE_ORBITAL_PERIOD).round(2)
  end
end

age = SpaceAge.new(1_000_000_000)
p age.on_earth # => 31.69

age = SpaceAge.new(8_210_123_456)
p age.on_neptune # => 1.58

age = SpaceAge.new(3_000_000_000)
p age.on_saturn # => 3.23