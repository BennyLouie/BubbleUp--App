json.extract! recommendation, :id, :user_id, :tea_id, :comments, :created_at, :updated_at
json.url recommendation_url(recommendation, format: :json)
