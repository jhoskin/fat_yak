class IngredientBatch < ActiveRecord::Base
	belongs_to :order
	belongs_to :ingredient
	belongs_to :quantity_unit, :class_name => 'MeasurementUnit'

	validates :ingredient,		:presence => true
	validates :order,			:presence => true
	validates :quantity,		:presence => true
	validates :quantity_unit,	:presence => true
	validates :purchase_cost,	:presence => true
end
