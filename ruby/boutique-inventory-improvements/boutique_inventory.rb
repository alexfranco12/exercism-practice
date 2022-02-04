require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = []
    items.each do |item|
      @items << OpenStruct.new(item)
    end
  end

  def item_names
    items.map { |item| item.name }.sort
  end

  def total_stock
    sum = 0
    arr = items.map { |item| item.quantity_by_size.values }.flatten
    arr.each { |el| sum += el }
    sum
  end
end