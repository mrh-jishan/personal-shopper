json.extract! transaction, :id, :buyer_user_id, :customer_user_id, :total, :status, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
