class Vehicle < ActiveRecord::Base
  attr_accessible :color, :database_id, :lic_plate, :make, :model, :note, :registered_owner, :state, :year
	belongs_to :database, :touch => true
	
	
def self.search(search)
  if search
    key = "%#{search}%"
    find(:all, :conditions => ['make LIKE ? OR model LIKE ? OR year LIKE ? OR lic_plate LIKE ? OR state LIKE ? OR color LIKE ? OR registered_owner LIKE ? OR note LIKE ?', key, key, key, key, key, key, key, key])
  else
    find(:all)
  end
end	
	
	
end
