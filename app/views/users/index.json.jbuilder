json.array!(@users) do |user|
  json.extract! user, :id, :name, :log_id
  json.url user_url(user, format: :json)
end
