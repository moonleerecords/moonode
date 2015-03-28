json.array!(@releases) do |release|
  json.extract! release, :id, :title, :catalogNumber, :releaseDate, :description, :tracklist, :bandcampAlbumId
  json.url release_url(release, format: :json)
end
