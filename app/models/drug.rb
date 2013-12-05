class Drug < ActiveRecord::Base
  attr_accessible :database_id, :drug_amount, :drug_name, :drug_price, :weapons
	belongs_to :database, :touch => true
	
	
	
def self.search(search)
  if search
    key = "%#{search}%"
    find(:all, :conditions => ['drug_amount LIKE ? OR drug_name LIKE ? OR drug_price LIKE ? OR weapons LIKE ?', key, key, key, key])
  else
    find(:all)
  end
end	
	
	
end
