# This will guess the User class
FactoryBot.define do
  factory :product do
    sequence(:name)  {|n| "Product##{n}" }
  end

  factory :category do
    sequence(:name)  {|n| "Category##{n}" }
  end
end