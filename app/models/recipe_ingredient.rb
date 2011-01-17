# == Schema Information
# Schema version: 20110112004649
#
# Table name: recipe_ingredients
#
#  id               :integer         not null, primary key
#  recipe_id        :integer
#  ingredient_id    :integer
#  quantity         :integer
#  quantity_unit_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

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
