class Recipe < ActiveRecord::Base
	belongs_to :sellable_yield_unit, :class_name => 'MeasurementUnit'
	belongs_to :waste_yield_unit, :class_name => 'MeasurementUnit'
	has_many :recipe_ingredients
	has_many :ingredients, :through => :recipe_ingredients
end
