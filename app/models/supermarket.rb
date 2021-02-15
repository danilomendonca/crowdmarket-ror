class Supermarket < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :product_prices
end
