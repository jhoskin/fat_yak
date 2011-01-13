class IngredientBatch < ActiveRecord::Base
	belongs_to :order
	belongs_to :ingredient
	belongs_to :quantity_unit, :class_name => 'MeasurementUnit'
end
