class Database < ActiveRecord::Base
  attr_accessible :Road, :address1, :address2, :agency_case, :agent_contact, :agent_tel, :analy_support, :applicable, :citizenship1, :citizenship2, :city, :city1, :city2, :cjis, :comp_location, :conceal_method, :country, :date_of_seizure, :day_of_the_week, :direction, :dob1, :dob2, :drug1, :drug1_amount, :drug2, :drug2_amount, :drug3, :drug3_amount, :extra1, :extra10, :extra11, :extra12, :extra2, :extra3, :extra4, :extra5, :extra6, :extra7, :extra8, :extra9, :false_compart, :gender1, :gender2, :hidta_initiative, :if_cargo, :investigating_agency, :k9, :lab_inhouse, :linked_to, :mile_marker, :misc1, :misc2, :name1, :name2, :name_of_organization, :oln1, :oln2, :picture1, :picture2, :price2, :price3, :rice1, :seizing_taskforce, :she_operation, :ssn1, :ssn2, :state, :state1, :state2, :street_address, :subject1, :subject2, :support_method, :tel_data2, :tel_data2, :tel_no1, :tel_no2, :time, :type_of_event, :vehicle1_color, :vehicle1_reg_owner, :vehicle1_state, :vehicle1lic_place, :vehicle1make, :vehicle1model, :vehicle1year, :vehicle2_color, :vehicle2_reg_owner, :vehicle2_state, :vehicle2lic_place, :vehicle2make, :vehicle2model2, :vehicle2year, :vehicle_seized, :zip, :zip1, :zip2
	has_many :drugs
	has_many :subjects
	has_many :vehicles
def self.search(search)
  if search
    key = "%#{search}%"
    find(:all, :conditions => ['time LIKE ? OR cjis LIKE ? OR seizing_taskforce LIKE ?', key, key, key])
  else
    find(:all)
  end
end

end
