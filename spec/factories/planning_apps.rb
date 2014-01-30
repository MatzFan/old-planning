# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :planning_app do
    reference "MyString"
    description "MyText"
  end
end
