json.extract! task, :id, :name, :status, :content, :priority, :start_date, :end_date, :created_at, :updated_at
json.url task_url(task, format: :json)
