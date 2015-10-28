class CreateShoppingSessions < ActiveRecord::Migration
  def change
    create_table :shopping_sessions do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.references :market, index: true, foreign_key: true



      t.timestamps null: false
    end
    add_index :shopping_sessions, [:user_id, :created_at]
    add_index :shopping_sessions, [:market_id, :created_at]

  end
end
