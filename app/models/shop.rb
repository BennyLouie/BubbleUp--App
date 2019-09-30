class Shop < ApplicationRecord
    has_many :shop_reviews
    has_many :teas
    has_many :users, through: :shop_reviews
end
