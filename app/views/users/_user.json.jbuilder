json.extract! user, :id, :email, :name, :password_digest, :string, :created_at, :updated_at
json.url user_url(user, format: :json)
