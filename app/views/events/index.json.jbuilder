json.array!(@events) do |event|
  json.extract! event, :id, :artist_id, :venue_id, :start, :end, :price, :ticketUrl, :songkickUrl, :facebookUrl, :lastfmUrl
  json.url event_url(event, format: :json)
end
