class Shop < ApplicationRecord
    has_many :shop_reviews
    has_many :teas
    has_many :users, through: :shop_reviews
    scope :location, -> (location) { where location: location }
    scope :starts_with, -> (name) { where("name like ?", "#{name}%") }

    def shop_with_location
        "#{self.name} - #{self.location}"
    end

    def ratings
        self.shop_reviews.map {|review| review.rating}
    end 

    def avg_rating
        (self.ratings.sum.to_f / self.ratings.length).round(2)
    end 

    def self.locations
        locations = self.all.map do |shop|
            shop.location
        end
        locations.uniq
    end
end
