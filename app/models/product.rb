class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { scope: :brand }
  validates :validated, inclusion: { in: [ true, false ] }
  validates :category, presence: true
  validates :brand, presence: true
  belongs_to :category
  belongs_to :brand
  has_many :product_prices

end
