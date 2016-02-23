json.array!(@lists) do |list|
  json.extract! list, :id, :name, :user_id, :state, :due_date, :context
  json.url list_url(list, format: :json)
end
