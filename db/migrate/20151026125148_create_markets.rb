class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :adress
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
