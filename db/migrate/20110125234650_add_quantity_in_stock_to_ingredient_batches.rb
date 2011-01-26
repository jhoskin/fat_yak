class AddQuantityInStockToIngredientBatches < ActiveRecord::Migration
  def self.up
    add_column :ingredient_batches, :quantity_in_stock, :decimal
    add_column :ingredient_batches, :quantity_in_stock_unit_id, :integer
  end

  def self.down
    remove_column :ingredient_batches, :quantity_in_stock_unit_id
    remove_column :ingredient_batches, :quantity_in_stock
  end
end
