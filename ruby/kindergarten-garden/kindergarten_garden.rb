=begin
Write your code for the 'Kindergarten Garden' exercise in this file. Make the tests in
`kindergarten_garden_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/kindergarten-garden` directory.
=end

class Garden
  GARDEN = {
    "V" => :violets,
    "R" => :radishes,
    "G" => :grass,
    "C" => :clover
  }

  attr_accessor :diagram

  def initialize(diagram)
    @diagram = diagram.split("\n")
  end

  def alice
    x = 0
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end
  
  def bob
    x = 2
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def charlie 
    x = 4
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def david
    x = 6
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def eve 
    x = 8
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def fred 
    x = 10
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def ginny 
    x = 12
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def harriet
    x = 14
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def ileana 
    x = 16
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def joseph 
    x = 18
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end

  def kincaid
    x = 20
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end
    
  def larry
    x = 22
    [GARDEN[diagram[0][x]], GARDEN[diagram[0][x+1]], GARDEN[diagram[1][x]], GARDEN[diagram[1][x+1]]]
  end
end

diagram = "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
garden = Garden.new(diagram)
p garden.alice