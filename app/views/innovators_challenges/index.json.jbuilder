json.array!(@innovators_challenges) do |innovators_challenge|
  json.extract! innovators_challenge, :id, :innovator_id, :challenge_id
  json.url innovators_challenge_url(innovators_challenge, format: :json)
end
