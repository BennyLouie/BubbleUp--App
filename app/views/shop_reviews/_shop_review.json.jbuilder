json.extract! shop_review, :id, :user_id, :shop_id, :rating, :review, :created_at, :updated_at
json.url shop_review_url(shop_review, format: :json)
