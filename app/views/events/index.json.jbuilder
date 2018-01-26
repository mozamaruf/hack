json.array!(@events) do |event|
  json.extract! event, :id, :sport, :datetime, :location, :coordinates, :description, :capacity, :user_id
  json.url event_url(event, format: :json)
end
