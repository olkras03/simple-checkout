require "item"

class Checkout
  attr_reader :items

  def initialize
    @items = []
  end

  def scan(item)
    @items << item.price
  end

  def total
    @items.sum
  end
end
