class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :supplier_id
      t.datetime :delivered_at
      t.decimal :freight_cost

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
