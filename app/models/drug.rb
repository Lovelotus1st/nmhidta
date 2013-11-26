class Drug < ActiveRecord::Base
  attr_accessible :database_id, :drug_amount, :drug_name, :drug_price, :weapons
	belongs_to :database, :touch => true
end
