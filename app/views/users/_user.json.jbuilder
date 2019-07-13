json.extract! user, :id, :name, :email, :gender, :contact, :created_at, :updated_at
json.url user_url(user, format: :json)
