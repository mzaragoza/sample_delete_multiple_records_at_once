require 'spec_helper'

describe User do
  it "has an name" do
    user = User.new name: "Moises Zaragoza"
    expect(user.name).to eq "Moises Zaragoza"
  end
  it "creates 100 more users" do
    User.create_100
    expect(User.count).to eq 100
  end
end
