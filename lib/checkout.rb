require "item"

class Checkout
  def initialize
    items = []
  end

  def scan(item)
    items << item
  end
end
