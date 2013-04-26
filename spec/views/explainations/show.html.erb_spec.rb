require 'spec_helper'

describe "explainations/show" do
  before(:each) do
    @explaination = assign(:explaination, stub_model(Explaination,
      :reason => "Reason",
      :team_id => 1,
      :transaction_id => 2,
      :category_id => 3,
      :other_party => "Other Party"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reason/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Other Party/)
  end
end
