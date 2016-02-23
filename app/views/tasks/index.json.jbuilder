json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :content, :state, :list_id, :duration
  json.url task_url(task, format: :json)
end
