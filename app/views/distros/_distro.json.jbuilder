json.extract! distro, :id, :name, :package_id, :description, :version, :created_at, :updated_at
json.url distro_url(distro, format: :json)
