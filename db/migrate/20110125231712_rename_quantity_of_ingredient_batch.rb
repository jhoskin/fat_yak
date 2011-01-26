class RenameQuantityOfIngredientBatch < ActiveRecord::Migration
  def self.up
    rename_column :ingredient_batches, :quantity, :quantity_delivered
    rename_column :ingredient_batches, :quantity_unit_id, :quantity_delivered_unit_id
    
  end

  def self.down
    rename_column :ingredient_batches, :quantity_delivered, :quantity
    rename_column :ingredient_batches, :quantity_delivered_unit_id, :quantity_unit_id
  end
end
