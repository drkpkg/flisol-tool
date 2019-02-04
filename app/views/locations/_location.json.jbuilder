json.extract! location, :id, :name, :description, :city_id, :lat, :lng, :created_at, :updated_at
json.url location_url(location, format: :json)
