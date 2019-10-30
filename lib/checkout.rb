require_relative "item"

class Checkout
  attr_reader :items

  def initialize
    @items = []
  end

  def scan(item)
    @items.append(item.price)
  end

  def total
     @items.inject(:+)
  end

  def display_total
    "£%.2f" % total
  end
end
