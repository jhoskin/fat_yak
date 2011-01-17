# == Schema Information
# Schema version: 20110112004649
#
# Table name: ingredient_batches
#
#  id               :integer         not null, primary key
#  ingredient_id    :integer
#  order_id         :integer
#  quantity         :integer
#  quantity_unit_id :integer
#  purchase_cost    :decimal(, )
#  created_at       :datetime
#  updated_at       :datetime
#

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
