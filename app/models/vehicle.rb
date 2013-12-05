class Vehicle < ActiveRecord::Base
  attr_accessible :color, :database_id, :lic_plate, :make, :model, :note, :registered_owner, :state, :year
	belongs_to :database, :touch => true
	
	
def self.search(search)
  if search
    key = "%#{search}%"
    find(:all, :conditions => ['make LIKE ? OR model LIKE ? OR year LIKE ? lic_plate LIKE ? state LIKE ? color LIKE ? registered_owner LIKE ? note LIKE ?', key, key, key, key, key, key, key, key])
  else
    find(:all)
  end
end	
	
	
end
