class MeasurementUnit < ActiveRecord::Base
	belongs_to :measurement_unit_category

	validates :title,	:presence => true
	validates :measurement_unit_category, :presence => true
end
