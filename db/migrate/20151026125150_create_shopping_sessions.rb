class CreateShoppingSessions < ActiveRecord::Migration
  def change
    create_table :shopping_sessions do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.references :market, index: true, foreign_key: true



      t.timestamps null: false
    end


  end
end
