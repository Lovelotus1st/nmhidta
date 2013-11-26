class Subject < ActiveRecord::Base
  attr_accessible :address, :citizenship, :city, :database_id, :dob, :gender, :misc, :name, :note, :oln, :ssn, :state, :suspect, :zip
	belongs_to :database, :touch => true
end
