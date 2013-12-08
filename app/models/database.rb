class Database < ActiveRecord::Base
  attr_accessible :Road, :address1, :address2, :agency_case, :agent_contact, :agent_tel, :analy_support, :applicable, :citizenship1, :citizenship2, :city, :city1, :city2, :cjis, :comp_location, :conceal_method, :country, :date_of_seizure, :day_of_the_week, :direction, :dob1, :dob2, :drug1, :drug1_amount, :drug2, :drug2_amount, :drug3, :drug3_amount, :extra1, :extra10, :extra11, :extra12, :extra2, :extra3, :extra4, :extra5, :extra6, :extra7, :extra8, :extra9, :false_compart, :gender1, :gender2, :hidta_initiative, :if_cargo, :investigating_agency, :k9, :lab_inhouse, :linked_to, :mile_marker, :misc1, :misc2, :name1, :name2, :name_of_organization, :oln1, :oln2, :picture1, :picture2, :price2, :price3, :rice1, :seizing_taskforce, :she_operation, :ssn1, :ssn2, :state, :state1, :state2, :street_address, :subject1, :subject2, :support_method, :tel_data2, :tel_data2, :tel_no1, :tel_no2, :time, :type_of_event, :vehicle1_color, :vehicle1_reg_owner, :vehicle1_state, :vehicle1lic_place, :vehicle1make, :vehicle1model, :vehicle1year, :vehicle2_color, :vehicle2_reg_owner, :vehicle2_state, :vehicle2lic_place, :vehicle2make, :vehicle2model2, :vehicle2year, :vehicle_seized, :zip, :zip1, :zip2
	has_many :drugs
	has_many :subjects
	has_many :vehicles
def self.search(search)
  if search
    key = "%#{search}%"
    find(:all, :conditions => ['  seizing_taskforce
          						  LIKE ? OR investigating_agency
          						  LIKE ? OR agency_case
          						  LIKE ? OR cjis
          						  LIKE ? OR hidta_initiative
          						  LIKE ? OR date_of_seizure
          						  LIKE ? OR time
          						  LIKE ? OR day_of_the_week
          						  LIKE ? OR type_of_event
          						  LIKE ? OR she_operation
          						  LIKE ? OR Road
          						  LIKE ? OR mile_marker
          						  LIKE ? OR direction
          						  LIKE ? OR street_address
          						  LIKE ? OR city
          						  LIKE ? OR country
          						  LIKE ? OR state
          						  LIKE ? OR zip
          						  LIKE ? OR drug1
          						  LIKE ? OR drug1_amount
          						  LIKE ? OR rice1
          						  LIKE ? OR drug2
          						  LIKE ? OR drug2_amount
          						  LIKE ? OR price2
          						  LIKE ? OR drug3
          						  LIKE ? OR drug3_amount
          						  LIKE ? OR price3
          						  LIKE ? OR name1
          						  LIKE ? OR dob1
          						  LIKE ? OR ssn1
          						  LIKE ? OR oln1
          						  LIKE ? OR gender1
          						  LIKE ? OR address1
          						  LIKE ? OR city1
          						  LIKE ? OR state1
          						  LIKE ? OR zip1
          						  LIKE ? OR subject1
          						  LIKE ? OR misc1
          						  LIKE ? OR citizenship1
          						  LIKE ? OR picture1
          						  LIKE ? OR tel_no1
          						  LIKE ? OR tel_data2
          						  LIKE ? OR name2
          						  LIKE ? OR dob2
          						  LIKE ? OR ssn2
          						  LIKE ? OR oln2
          						  LIKE ? OR gender2
          						  LIKE ? OR address2
          						  LIKE ? OR city2
          						  LIKE ? OR state2
          						  LIKE ? OR zip2
          						  LIKE ? OR subject2
          						  LIKE ? OR misc2
          						  LIKE ? OR citizenship2
          						  LIKE ? OR picture2
          						  LIKE ? OR tel_no2
          						  LIKE ? OR tel_data2
          						  LIKE ? OR vehicle_seized
          						  LIKE ? OR vehicle1make
          						  LIKE ? OR vehicle1model
          						  LIKE ? OR vehicle1year
          						  LIKE ? OR vehicle1lic_place
          						  LIKE ? OR vehicle1_state
          						  LIKE ? OR vehicle1_color
          						  LIKE ? OR vehicle1_reg_owner
          						  LIKE ? OR vehicle2make
          						  LIKE ? OR vehicle2model2
          						  LIKE ? OR vehicle2year
          						  LIKE ? OR vehicle2lic_place
          						  LIKE ? OR vehicle2_state
          						  LIKE ? OR vehicle2_color
          						  LIKE ? OR vehicle2_reg_owner
          						  LIKE ? OR linked_to
          						  LIKE ? OR name_of_organization
          						  LIKE ? OR agent_contact
          						  LIKE ? OR agent_tel
          						  LIKE ? OR analy_support
          						  LIKE ? OR support_method
          						  LIKE ? OR conceal_method
          						  LIKE ? OR false_compart
          						  LIKE ? OR comp_location
          						  LIKE ? OR if_cargo
          						  LIKE ? OR k9
          						  LIKE ? OR lab_inhouse
          						  LIKE ? OR applicable
          						  LIKE ? OR extra1
          						  LIKE ? OR extra2
          						  LIKE ? OR extra3
          						  LIKE ? OR extra4
          						  LIKE ? OR extra5
          						  LIKE ? OR extra6
          						  LIKE ? OR extra7
          						  LIKE ? OR extra8
          						  LIKE ? OR extra9
          						  LIKE ? OR extra10
          						  LIKE ? OR extra11
          						  LIKE ? OR extra12 LIKE ?  ', key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key, key ])
  else
    find(:all)
  end
end

end
