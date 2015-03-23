json.array!(@artist_members) do |artist_member|
  json.extract! artist_member, :id, :Artist_id, :Member_id, :role
  json.url artist_member_url(artist_member, format: :json)
end
