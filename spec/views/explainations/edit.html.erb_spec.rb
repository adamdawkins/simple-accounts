require 'spec_helper'

describe "explainations/edit" do
  before(:each) do
    @explaination = assign(:explaination, stub_model(Explaination,
      :reason => "MyString",
      :team_id => 1,
      :transaction_id => 1,
      :category_id => 1,
      :other_party => "MyString"
    ))
  end

  it "renders the edit explaination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", explaination_path(@explaination), "post" do
      assert_select "input#explaination_reason[name=?]", "explaination[reason]"
      assert_select "input#explaination_team_id[name=?]", "explaination[team_id]"
      assert_select "input#explaination_transaction_id[name=?]", "explaination[transaction_id]"
      assert_select "input#explaination_category_id[name=?]", "explaination[category_id]"
      assert_select "input#explaination_other_party[name=?]", "explaination[other_party]"
    end
  end
end
