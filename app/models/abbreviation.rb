class Abbreviation < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { scope: [:supermarket, :product] }
  belongs_to :supermarket
  belongs_to :product
end
