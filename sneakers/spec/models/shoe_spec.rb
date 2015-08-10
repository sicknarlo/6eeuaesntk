require 'rails_helper'

describe Shoe do
  let(:shoe){ create(:shoe) }

  it "saves with default attributes" do
    expect(shoe).to be_valid
  end

  it "does not save without a brand" do
    shoe.brand = nil
    expect(shoe).not_to be_valid
  end

  it "does not save without a model" do
    shoe.model = nil
    expect(shoe).not_to be_valid
  end

  it "does not save without a year" do
    shoe.year = nil
    expect(shoe).not_to be_valid
  end

  it "does not save without a purhase date" do
    shoe.purchase_date = nil
    expect(shoe).not_to be_valid
  end
end
