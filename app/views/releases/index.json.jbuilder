json.array!(@releases) do |release|
  json.extract! release, :id, :name, :noTracks, :artist_name, :artist_id, :label_name, :label_id
  json.url release_url(release, format: :json)
end
