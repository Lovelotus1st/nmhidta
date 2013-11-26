class Vehicle < ActiveRecord::Base
  attr_accessible :color, :database_id, :lic_plate, :make, :model, :note, :registered_owner, :state, :year
	belongs_to :database, :touch => true
end
