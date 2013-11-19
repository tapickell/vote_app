json.array!(@votes) do |vote|
  json.extract! vote, :coffee, :email
  json.url vote_url(vote, format: :json)
end
