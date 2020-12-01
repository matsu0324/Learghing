json.array!(@events) do |event|
  json.extract! event, :id, :title, :description
  json.start event.start_date
  json.end event.end_date
  json.url user_url(user.id, format: :html)
end