class Tea < ApplicationRecord
    belongs_to :shop
    has_many :recommendations
    has_many :users, through: :recommendations

    def tea_with_shop
        "#{self.name} - #{Shop.find_by(id: self.shop_id).name}"
    end 

end
