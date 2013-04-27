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

  it "has many explainations" do
    expect(Transaction.reflect_on_association(:explainations).macro).to eq :has_many
  end

  describe "#unexplained_amount" do
    let(:transaction) { FactoryGirl.create(:transaction, amount: 10.00) }
    it "returns a Float" do
      expect(transaction.unexplained_amount).to be_kind_of Float
    end

    it " returns the amount of the transaction, less the total amount of existing explainations" do
      pending "write unexplained amount value test"
    end
  end

  
  context "adding explanations to transaction" do
   
    it "allows new explainations with a value less than or equal to the remaining value after existing explanations are subtracted" do 
      pending "write adding explainations to transaction tests"
    end

    it "doesn't allow new explainations with a value greater than the remaining value after existing explanations are subtracted" do 

    end
    
  end

end

