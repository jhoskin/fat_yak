# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#

MeasurementUnitCategory.delete_all
weight_category = MeasurementUnitCategory.create!(:title => "Weight")
volume_category = MeasurementUnitCategory.create!(:title => "Volume")

MeasurementUnit.delete_all
MeasurementUnit.create!(:title => "Grams", :measurement_unit_category => weight_category)
MeasurementUnit.create!(:title => "Millilitres", :measurement_unit_category => volume_category)

# Dummy user - not for production
if Rails.env != "production"
	User.delete_all	
	User.create!(:name => "yak", :email => "yak@dev.geek.nz", :password => "yak", :password_confirmation => "yak")
end

