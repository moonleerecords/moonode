json.array!(@release_reviews) do |release_review|
  json.extract! release_review, :id, :release_id, :title, :url, :quotes, :visible
  json.url release_review_url(release_review, format: :json)
end
