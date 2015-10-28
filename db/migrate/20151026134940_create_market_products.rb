class CreateMarketProducts < ActiveRecord::Migration
  def change
    create_table :market_products do |t|
      t.float :price
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :market_products, [:product_id, :created_at]
  end
end
