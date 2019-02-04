json.extract! person, :id, :name, :lastname, :email, :location_id, :event_id, :age, :gender_id, :created_at, :updated_at
json.url person_url(person, format: :json)
