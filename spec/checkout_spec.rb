require "checkout"
require "item"

describe Checkout do
  it "be instance of the class checkout" do
    checkout = Checkout.new
    expect(checkout).to be_kind_of Checkout
  end

  it "responds to scan" do
    checkout = Checkout.new
    expect(checkout).to respond_to(:scan).with(1).argument
  end
  it "can respond to total" do
    checkout = Checkout.new
    expect(checkout).to respond_to(:total)
  end

  it "can calculate the total" do
    checkout = Checkout.new
    item1 = Item.new("milk", 1.25)
    item2 = Item.new("butter", 2.00)
    checkout.scan(item1)
    checkout.scan(item2)
    expect(checkout.total).to eq(item1.price + item2.price)
  end

  it "can display the total in £xx.xx format" do
    checkout = Checkout.new
    item1 = Item.new("milk", 1.25)
    item2 = Item.new("butter", 2.00)
    checkout.scan(item1)
    checkout.scan(item2)
    checkout.total
    expect(checkout.display_total).to eq("£3.25")
  end
end
