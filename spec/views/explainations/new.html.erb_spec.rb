require 'spec_helper'

describe "explainations/new" do
  before(:each) do
    assign(:explaination, stub_model(Explaination,
      :reason => "MyString",
      :team_id => 1,
      :transaction_id => 1,
      :category_id => 1,
      :other_party => "MyString"
    ).as_new_record)
  end

  it "renders new explaination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", explainations_path, "post" do
      assert_select "input#explaination_reason[name=?]", "explaination[reason]"
      assert_select "input#explaination_team_id[name=?]", "explaination[team_id]"
      assert_select "input#explaination_transaction_id[name=?]", "explaination[transaction_id]"
      assert_select "input#explaination_category_id[name=?]", "explaination[category_id]"
      assert_select "input#explaination_other_party[name=?]", "explaination[other_party]"
    end
  end
end
