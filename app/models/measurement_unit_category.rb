class MeasurementUnitCategory < ActiveRecord::Base
	has_many :measurement_units

	validates :title, :presence => true
end
