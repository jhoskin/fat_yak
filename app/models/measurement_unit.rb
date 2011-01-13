class MeasurementUnit < ActiveRecord::Base
	belongs_to :measurement_unit_category

#	validates :title,	:presence => true,
#						:length => {:minimum => 1}
end
