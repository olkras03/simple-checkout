require "item"

describe Item do
  let(:item) { Item.new("milk", 1.25) }

  it "be instance of class Item" do
    expect(item).to be_kind_of Item
  end

  it "shows the item's price" do
    expect(item.price).to eq 1.25
  end
end
