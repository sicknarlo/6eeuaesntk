require 'rails_helper'

describe User do
  let(:user){ build(:user) }

  it "doesn't allow a name shorter than 6 characters" do
    user.username="Omwer"
    expect(user).to_not be_valid
  end

  it "allows a 6 char name" do
    user.username="Omwerv"
    expect(user).to be_valid
  end

  it "doesn't allow a name lnger than 20 characters" do
    user.username="g" * 21
    expect(user).to_not be_valid
  end

  it "allows a 20 char name" do
    user.username="g" * 20
    expect(user).to be_valid
  end

end
