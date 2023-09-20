class Product < ApplicationRecord
  belongs_to :branch
  belongs_to :shop
  belongs_to :category
end
