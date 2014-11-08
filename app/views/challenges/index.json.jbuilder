json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :date, :title, :body, :vote
  json.url challenge_url(challenge, format: :json)
end
