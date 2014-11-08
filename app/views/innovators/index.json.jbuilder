json.array!(@innovators) do |innovator|
  json.extract! innovator, :id, :user_name, :about_me, :links, :classes_taken, :technical_skills
  json.url innovator_url(innovator, format: :json)
end
