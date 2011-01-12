class Order < ActiveRecord::Base
	has_many :ingredient_batches
	belongs_to :supplier
end
