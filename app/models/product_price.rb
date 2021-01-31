class ProductPrice < ApplicationRecord
  validates :price, presence: true
  validates :validated, inclusion: { in: [ true, false ] }

  belongs_to :product
  belongs_to :supermarket
end
