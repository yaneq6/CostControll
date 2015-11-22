class AddBarcodeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :barcode, :float
  end
end
