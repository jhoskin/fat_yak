# == Schema Information
# Schema version: 20110112004649
#
# Table name: orders
#
#  id           :integer         not null, primary key
#  supplier_id  :integer
#  delivered_at :datetime
#  freight_cost :decimal(, )
#  created_at   :datetime
#  updated_at   :datetime
#

class Order < ActiveRecord::Base
	has_many :ingredient_batches
	belongs_to :supplier

	validates :freight_cost, :presence => true
	validates :delivered_at, :presence => true
	validates :supplier, :presence => true		
end
