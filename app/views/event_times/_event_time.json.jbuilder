json.extract! event_time, :id, :time, :user_id, :event_id, :created_at, :updated_at
json.url event_time_url(event_time, format: :json)
