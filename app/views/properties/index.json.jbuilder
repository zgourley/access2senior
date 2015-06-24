json.array!(@properties) do |property|
  json.extract! property, :id, :name, :location, :description, :category, :image
  json.url property_url(property, format: :json)
end
