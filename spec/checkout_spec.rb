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
    expect(checkout.scan(item1)).to eq(["milk", 1.25])
  end

  xit "#total" do
    checkout = Checkout.new
    item1 = Item.new("milk", 1.25)
    item2 = Item.new("butter", 2.00)
    checkout.scan(item1)
    checkout.scan(item2)
    expect(checkout.total).to eq 3.25
  end
end
