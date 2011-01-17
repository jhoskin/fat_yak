# == Schema Information
# Schema version: 20110112004649
#
# Table name: suppliers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Supplier < ActiveRecord::Base
	has_many :orders

	validates :name, :presence => true
end
