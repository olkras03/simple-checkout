require "checkout"
require "item"

describe Checkout do
  it "be instance of the class checkout" do
    checkout = Checkout.new
    expect(checkout).to be_kind_of Checkout
  end

  it "responds to scan" do
    checkout = Checkout.new
    item1 = Item.new("milk", 1.25)
    expect(checkout.scan).to eq(item1)
  end
end
