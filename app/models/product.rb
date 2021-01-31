class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :validated, inclusion: { in: [ true, false ] }
  validates :category, presence: true
  belongs_to :category

  
end
