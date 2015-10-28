class MarketProductShoppingSession < ActiveRecord::Base

  belongs_to :market_product
  belongs_to :shopping_session

end
