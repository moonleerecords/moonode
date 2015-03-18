json.array!(@labels) do |label|
  json.extract! label, :id, :user_id, :name, :country, :city, :founded, :website
  json.url label_url(label, format: :json)
end
