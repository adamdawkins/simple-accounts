require 'spec_helper'

describe "explainations/index" do
  before(:each) do
    assign(:explainations, [
      stub_model(Explaination,
        :reason => "Reason",
        :team_id => 1,
        :transaction_id => 2,
        :category_id => 3,
        :other_party => "Other Party"
      ),
      stub_model(Explaination,
        :reason => "Reason",
        :team_id => 1,
        :transaction_id => 2,
        :category_id => 3,
        :other_party => "Other Party"
      )
    ])
  end

  it "renders a list of explainations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Other Party".to_s, :count => 2
  end
end
