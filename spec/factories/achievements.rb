# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :achievement do
    name "MyString"
    description "MyText"
  end

  factory :code_achievement do
    name "MyCode"
    description "Best Code ever written"
    type "CodeAchievement"
  end
end
