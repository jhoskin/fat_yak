# == Schema Information
# Schema version: 20110125234650
#
# Table name: ingredient_batches
#
#  id                         :integer         not null, primary key
#  ingredient_id              :integer
#  order_id                   :integer
#  quantity_delivered         :integer
#  quantity_delivered_unit_id :integer
#  purchase_cost              :decimal(, )
#  created_at                 :datetime
#  updated_at                 :datetime
#  quantity_in_stock          :decimal(, )
#  quantity_in_stock_unit_id  :integer
#

class IngredientBatch < ActiveRecord::Base
	belongs_to :order
	belongs_to :ingredient
	belongs_to :quantity_delivered_unit, :class_name => 'MeasurementUnit'
	belongs_to :quantity_in_stock_unit, :class_name => 'MeasurementUnit'

	validates :ingredient,		:presence => true
	validates :order,			:presence => true
	validates :quantity_in_stock,		:presence => true
	validates :quantity_delivered,		:presence => true
	validates :quantity_delivered_unit,	:presence => true
	validates :quantity_in_stock_unit,	:presence => true
	validates :purchase_cost,	:presence => true
end
