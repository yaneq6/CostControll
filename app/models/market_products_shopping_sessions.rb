class MarketProductsShoppingSessions < ActiveRecord::Base

  belongs_to :market_product
  belongs_to :shopping_session
  self.primary_key = :market_product_id
end

