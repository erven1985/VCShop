json.extract! product_feedback, :id, :rating, :comment, :created_at, :updated_at
json.url product_feedback_url(product_feedback, format: :json)
