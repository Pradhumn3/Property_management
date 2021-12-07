require 'rails_helper'

RSpec.describe User, type: :model do

  it "is not valid without a Username" do
    user = User.new(name: nil)
    expect(user).to be_invalid
  end

  it "is not valid without a role" do
    user = User.new(role: nil)
    expect(user).to be_invalid
  end
  
end