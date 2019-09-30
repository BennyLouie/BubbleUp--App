class Tea < ApplicationRecord
    belongs_to :shop
    has_many :recommendations
    has_many :users, through: :recommendations
end
