json.array!(@artists) do |artist|
  json.extract! artist, :id, :Label_id, :name, :description, :countryCode, :city, :genre, :formed, :active, :booking
  json.url artist_url(artist, format: :json)
end
