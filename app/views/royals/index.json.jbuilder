json.array!(@royals) do |royal|
  json.extract! royal, :id
  json.url royal_url(royal, format: :json)
end
