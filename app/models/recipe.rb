# == Schema Information
# Schema version: 20110112004649
#
# Table name: recipes
#
#  id                     :integer         not null, primary key
#  title                  :string(255)
#  sellable_yield         :integer
#  sellable_yield_unit_id :integer
#  waste_yield            :integer
#  waste_yield_unit_id    :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class Recipe < ActiveRecord::Base
	belongs_to :sellable_yield_unit, :class_name => 'MeasurementUnit'
	belongs_to :waste_yield_unit, :class_name => 'MeasurementUnit'
	has_many :recipe_ingredients
	has_many :ingredients, :through => :recipe_ingredients

	validates :title,				:presence => true
	validates :sellable_yield,		:presence => true
	validates :sellable_yield_unit,	:presence => true
	validates :waste_yield,			:presence => true
	validates :waste_yield_unit,	:presence => true	

end
