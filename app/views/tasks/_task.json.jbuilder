json.extract! task, :id, :description, :notes, :deadline, :created_at, :updated_at
json.url task_url(task, format: :json)
