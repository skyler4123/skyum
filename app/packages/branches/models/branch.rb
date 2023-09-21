class Branch < ApplicationRecord
  has_many :cards
  has_many :products
  
  enum status: { unactive: 0, active: 1 }
end
