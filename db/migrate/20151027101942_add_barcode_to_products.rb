class AddBarcodeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :barcode, :integer
  end
end
