class Order < ActiveRecord::Base
	has_many :ingredient_batches
	belongs_to :supplier

	validates :freight_cost, :presence => true
	validates :delivered_at, :presence => true
	validates :supplier, :presence => true		
end
