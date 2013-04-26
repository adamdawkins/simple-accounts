# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    date "2013-04-26 01:40:42"
    description "MyString"
    amount 1.5
  end
end
