json.array!(@market_products) do |market_product|
  json.extract! market_product, :id, :price
  json.url market_product_url(market_product, format: :json)
end
