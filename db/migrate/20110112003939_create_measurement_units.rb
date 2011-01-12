class CreateMeasurementUnits < ActiveRecord::Migration
  def self.up
    create_table :measurement_units do |t|
      t.integer :measurement_unit_category_id
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :measurement_units
  end
end
