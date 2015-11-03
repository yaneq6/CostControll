class CreateMarketProductsShoppingSessions < ActiveRecord::Migration
  def change
    create_table :market_products_shopping_sessions, id: false do |t|
      t.belongs_to :market_product, index: true
      t.belongs_to :shopping_session, index: true
    end
  end
end
