json.array!(@videos) do |video|
  json.extract! video, :id, :artist_id, :service, :videoId
  json.url video_url(video, format: :json)
end
