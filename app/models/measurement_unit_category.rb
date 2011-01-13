class MeasurementUnitCategory < ActiveRecord::Base
	has_many :measurement_units
end
