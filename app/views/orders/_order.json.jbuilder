json.extract! order, :id, :product_id, :user_buyer_id, :user_customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
