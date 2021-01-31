# This will guess the User class
FactoryBot.define do
  factory :category do
    sequence(:name)  {|n| "Category##{n}" }
  end

  factory :product do
    sequence(:name)  {|n| "Product##{n}" }
    association :category
  end

  factory :product_without_category, class: Product do
    sequence(:name)  {|n| "Product##{n}" }
  end

  factory :product_price do
    sequence(:price)  {|n| n }
    association :product
    association :supermarket
  end

  factory :supermarket do
    sequence(:name)  {|n| "Supermarket##{n}" }
  end
end