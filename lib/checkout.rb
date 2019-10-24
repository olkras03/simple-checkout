require "item"

class Checkout
  attr_reader :items

  def initialize
    @items = []
  end

  def scan(item)
    @items << item
  end

  def total
    sum = 0
    @items.each { |a| sum += a }
  end
end
