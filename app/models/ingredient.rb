# == Schema Information
# Schema version: 20110112004649
#
# Table name: ingredients
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Ingredient < ActiveRecord::Base
	has_many :recipe_ingredients
	has_many :recipes, :through => :recipe_ingredients

	validates :title,	:presence => true
end
