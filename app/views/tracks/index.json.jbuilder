json.array!(@tracks) do |track|
  json.extract! track, :id, :name, :video, :release_id
  json.url track_url(track, format: :json)
end
