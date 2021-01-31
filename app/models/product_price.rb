class ProductPrice < ApplicationRecord
  validates :price, presence: true

  belongs_to :product
  belongs_to :supermarket
end
