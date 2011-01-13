class RecipeIngredient < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :recipe
	belongs_to :quantity_unit,	:class_name => 'MeasurementUnit'

	validates :ingredient,		:presence => true
	validates :recipe,			:presence => true
	validates :quantity_unit,	:presence => true
	validates :quantity,		:presence => true,
								:numericality => {:greater_than => 0}


end
