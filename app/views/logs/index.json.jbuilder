json.array!(@logs) do |log|
  json.extract! log, :id, :user_id, :date, :description, :title
  json.url log_url(log, format: :json)
end
