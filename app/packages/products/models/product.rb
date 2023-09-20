class Product < ApplicationRecord
  belongs_to :branch
  belongs_to :shop
  belongs_to :category
  enum status: {unactive: 0, active: 1}
end
