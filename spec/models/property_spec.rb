require 'rails_helper'
RSpec.describe Property, type: :model do

  it "is not valid without a title" do
    property = Property.new(title: nil)
    expect(property).to be_invalid
  end

  it "is not valid without a Price" do
    property = Property.new(price: nil)
    expect(property).to be_invalid
  end

  it "is not valid without a deposit_required" do
    property = Property.new(deposit_required: nil)
    expect(property).to be_invalid
  end
  
end
