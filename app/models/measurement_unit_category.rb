# == Schema Information
# Schema version: 20110112004649
#
# Table name: measurement_unit_categories
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class MeasurementUnitCategory < ActiveRecord::Base
	has_many :measurement_units

	validates :title, :presence => true
end
