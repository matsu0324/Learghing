json.array!(@events) do |event|
  json.title "\n #{event.title}"
  json.start event.start
end