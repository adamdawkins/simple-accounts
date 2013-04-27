# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :explaination do
    reason "MyString"
    team_id 1
    transaction_id 1
    category_id 1
    other_party "MyString"
    amount 1.50
  end
end
