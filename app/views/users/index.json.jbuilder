  json.array!(@users) do |user|
  json.extract! user, :id, :name, :surname, :email, :bio
  json.url user_url(user, format: :json)
end
