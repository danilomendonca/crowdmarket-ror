class Abbreviation < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { scope: :product }
  belongs_to :product
end
