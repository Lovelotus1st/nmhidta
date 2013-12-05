class Subject < ActiveRecord::Base
  attr_accessible :address, :citizenship, :city, :database_id, :dob, :gender, :misc, :name, :note, :oln, :ssn, :state, :suspect, :zip
	belongs_to :database, :touch => true
<<<<<<< HEAD
	
	
def self.search(search)
  if search
    key = "%#{search}%"
    find(:all, :conditions => ['address LIKE ? OR citizenship LIKE ? OR city LIKE ? OR dob LIKE ? OR gender LIKE ? OR name LIKE ? OR oln LIKE ? OR ssn LIKE ? OR suspect LIKE ? OR state LIKE ? OR zip LIKE ?', key, key, key, key, key, key, key, key, key, key, key])
  else
    find(:all)
  end
end	
	
	
=======
>>>>>>> b431c96e039fd553f90d241119e3fd7c345d0369
end
