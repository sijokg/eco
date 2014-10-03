json.array!(@events) do |event|
  json.extract! event, :name, :title, :description, :from_date, :to_date, :image, :status_id
  json.url event_url(event, format: :json)
end
