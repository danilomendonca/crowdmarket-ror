# This will guess the User class
FactoryBot.define do
  factory :category do
    sequence(:name)  {|n| "Category##{n}" }
  end

  factory :product do
    sequence(:name)  {|n| "Product##{n}" }
    association :category
  end
end