class Product < ApplicationRecord
  has_many :pictes, as: :imageable
end
