class User < ApplicationRecord
    has_many :recommendations
    has_many :shop_reviews
    has_many :shops, through: :shop_reviews
    has_many :teas, through: :recommendations
    validates :username, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end
