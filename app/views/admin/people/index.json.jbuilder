json.array!(@people) do |person|
  json.extract! person, :name, :nianji, :city, :email, :leixing, :content
  json.url person_url(person, format: :json)
end