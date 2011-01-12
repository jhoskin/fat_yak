class CreateIngredientBatches < ActiveRecord::Migration
  def self.up
    create_table :ingredient_batches do |t|
      t.integer :ingredient_id
      t.integer :order_id
      t.integer :quantity
      t.integer :quantity_unit_id
      t.decimal :purchase_cost

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredient_batches
  end
end
