class AddMarketToMarketProducts < ActiveRecord::Migration
  def change
    add_reference :market_products, :market, index: true, foreign_key: true
  end
end
