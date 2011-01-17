# == Schema Information
# Schema version: 20110112004649
#
# Table name: measurement_units
#
#  id                           :integer         not null, primary key
#  measurement_unit_category_id :integer
#  title                        :string(255)
#  created_at                   :datetime
#  updated_at                   :datetime
#

class MeasurementUnit < ActiveRecord::Base
	belongs_to :measurement_unit_category

	validates :title,	:presence => true
	validates :measurement_unit_category, :presence => true
end
