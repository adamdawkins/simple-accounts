require 'spec_helper'

describe Explaination do
  
  let (:explaination) {FactoryGirl.create(:explaination)}

  it "requires a reason" do
    expect(Explaination.new).to have(1).error_on(:reason)
  end
  
  it "requires an other party" do
    expect(Explaination.new).to have(1).error_on(:other_party)
  end

  it "requires a transaction_id" do
    expect(Explaination.new).to have(1).error_on(:transaction_id)
  end

  it "requires a category_id" do
    expect(Explaination.new).to have(1).error_on(:category_id)
  end

  it "is invalid if the amount is less than or equal to 0.00" do
    expect(FactoryGirl.build(:explaination, amount: 0.00)).to be_invalid
  end
end
