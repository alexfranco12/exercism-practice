=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end

class ResistorColorTrio
  attr_accessor :colors

  BANDS = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9,
  }

  def initialize(colors)
    @colors = colors
  end

  def label
    ohms = ""

    @colors.each do |color| 
      raise ArgumentError.new if BANDS.key?(color) == false
    end

    @colors.each_with_index do |color, i|
      if i < 2
        ohms += BANDS[color].to_s
      elsif i == 2
        ohms = (ohms.to_i * (10 ** BANDS[color])).to_s
      end
    end

    if ohms.length < 4
      "Resistor value: #{ohms} ohms"
    else 
      "Resistor value: #{ohms.chomp('000')} kiloohms"
    end
  end
end

p ResistorColorTrio.new(%w[orange orange black]).label # => "Resistor value: 33 ohms"
p ResistorColorTrio.new(%w[red black red]).label # => "Resistor value: 2 kiloohms"
p ResistorColorTrio.new(%w[yellow violet yellow]).label
# ResistorColorTrio.new(%w[yellow purple black]).label