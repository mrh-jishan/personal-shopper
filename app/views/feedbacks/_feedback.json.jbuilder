json.extract! feedback, :id, :name, :feedback, :email, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
