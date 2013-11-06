class Database < ActiveRecord::Base
  attr_accessible :address, :city, :destination, :dob, :fbin, :first_name, :last_name, :make, :mile_marker, :model, :origin, :other1, :other2, :other3, :other4, :owner, :picture, :registration, :road, :ssn, :state, :year
end
