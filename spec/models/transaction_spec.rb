require 'spec_helper'

describe Transaction do
  
  it "requires a date" do
    expect(Transaction.new).to have(1).error_on(:date)
  end

  it "requires a description" do
    expect(Transaction.new).to have(1).error_on(:description)
  end

  it "requires an amount" do
    expect(Transaction.new).to have(1).error_on(:amount)
  end

  it "has an #explaination method" do
    expect(Transaction.new).to respond_to(:explaination) 
  end

end
