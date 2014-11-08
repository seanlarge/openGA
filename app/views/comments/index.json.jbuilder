json.array!(@comments) do |comment|
  json.extract! comment, :id, :date, :innovator_id, :challenge_id, :vote, :body
  json.url comment_url(comment, format: :json)
end
