json.array!(@labels) do |label|
  json.extract! label, :id, :name, :location, :image, :owner
  json.url label_url(label, format: :json)
end
