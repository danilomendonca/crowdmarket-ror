class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :validated, inclusion: { in: [ true, false ] }
  validates :category, presence: true
  validates :brand, presence: true
  belongs_to :category
  belongs_to :brand

  
end
