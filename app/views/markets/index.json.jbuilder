json.array!(@markets) do |market|
  json.extract! market, :id, :adress, :latitude, :longitude
  json.url market_url(market, format: :json)
end
