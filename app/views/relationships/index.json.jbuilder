json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :user_id, :person_id, :message
  json.url relationship_url(relationship, format: :json)
end
