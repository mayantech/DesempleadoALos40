json.array!(@events) do |event|
  json.extract! event, :id, :event_date, :event_title, :event_description, :place_event, :agenda_event, :picture_event, :url
  json.url event_url(event, format: :json)
end
