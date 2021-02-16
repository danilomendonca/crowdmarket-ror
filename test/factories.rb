# This will guess the User class
FactoryBot.define do
  factory :category do
    sequence(:name)  {|n| "Category##{n}" }
  end

  factory :brand do
    sequence(:name)  {|n| "Brand##{n}" }
  end

  factory :product do
    sequence(:name)  {|n| "Product##{n}" }
    validated { false }
    association :category
    association :brand
  end

  factory :product_without_category, class: Product do
    sequence(:name)  {|n| "Product##{n}" }
  end

  factory :abbreviation do
    sequence(:name)  {|n| "Prod##{n}" }
    association :product
  end

  factory :product_price do
    sequence(:price)  {|n| n }
    validated { false }
    association :product
    association :supermarket
  end

  factory :supermarket do
    sequence(:name)  {|n| "Supermarket##{n}" }
  end
end