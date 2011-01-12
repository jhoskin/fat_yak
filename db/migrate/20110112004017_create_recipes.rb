class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :title
      t.integer :sellable_yield
      t.integer :sellable_yield_unit_id
      t.integer :waste_yield
      t.integer :waste_yield_unit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
