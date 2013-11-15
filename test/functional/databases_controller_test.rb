require 'test_helper'

class DatabasesControllerTest < ActionController::TestCase
  setup do
    @database = databases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:databases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create database" do
    assert_difference('Database.count') do
      post :create, database: { Road: @database.Road, address1: @database.address1, address2: @database.address2, agency_case: @database.agency_case, agent_contact: @database.agent_contact, agent_tel: @database.agent_tel, analy_support: @database.analy_support, applicable: @database.applicable, citizenship1: @database.citizenship1, citizenship2: @database.citizenship2, city1: @database.city1, city2: @database.city2, city: @database.city, cjis: @database.cjis, comp_location: @database.comp_location, conceal_method: @database.conceal_method, country: @database.country, date_of_seizure: @database.date_of_seizure, day_of_the_week: @database.day_of_the_week, direction: @database.direction, dob1: @database.dob1, dob2: @database.dob2, drug1: @database.drug1, drug1_amount: @database.drug1_amount, drug2: @database.drug2, drug2_amount: @database.drug2_amount, drug3: @database.drug3, drug3_amount: @database.drug3_amount, extra10: @database.extra10, extra11: @database.extra11, extra12: @database.extra12, extra1: @database.extra1, extra2: @database.extra2, extra3: @database.extra3, extra4: @database.extra4, extra5: @database.extra5, extra6: @database.extra6, extra7: @database.extra7, extra8: @database.extra8, extra9: @database.extra9, false_compart: @database.false_compart, gender1: @database.gender1, gender2: @database.gender2, hidta_initiative: @database.hidta_initiative, if_cargo: @database.if_cargo, investigating_agency: @database.investigating_agency, k9: @database.k9, lab_inhouse: @database.lab_inhouse, linked_to: @database.linked_to, mile_marker: @database.mile_marker, misc1: @database.misc1, misc2: @database.misc2, name1: @database.name1, name2: @database.name2, name_of_organization: @database.name_of_organization, oln1: @database.oln1, oln2: @database.oln2, picture1: @database.picture1, picture2: @database.picture2, price2: @database.price2, price3: @database.price3, rice1: @database.rice1, seizing_taskforce: @database.seizing_taskforce, she_operation: @database.she_operation, ssn1: @database.ssn1, ssn2: @database.ssn2, state1: @database.state1, state2: @database.state2, state: @database.state, street_address: @database.street_address, subject1: @database.subject1, subject2: @database.subject2, support_method: @database.support_method, tel_data2: @database.tel_data2, tel_data2: @database.tel_data2, tel_no1: @database.tel_no1, tel_no2: @database.tel_no2, time: @database.time, type_of_event: @database.type_of_event, vehicle1_color: @database.vehicle1_color, vehicle1_reg_owner: @database.vehicle1_reg_owner, vehicle1_state: @database.vehicle1_state, vehicle1lic_place: @database.vehicle1lic_place, vehicle1make: @database.vehicle1make, vehicle1model: @database.vehicle1model, vehicle1year: @database.vehicle1year, vehicle2_color: @database.vehicle2_color, vehicle2_reg_owner: @database.vehicle2_reg_owner, vehicle2_state: @database.vehicle2_state, vehicle2lic_place: @database.vehicle2lic_place, vehicle2make: @database.vehicle2make, vehicle2model2: @database.vehicle2model2, vehicle2year: @database.vehicle2year, vehicle_seized: @database.vehicle_seized, zip1: @database.zip1, zip2: @database.zip2, zip: @database.zip }
    end

    assert_redirected_to database_path(assigns(:database))
  end

  test "should show database" do
    get :show, id: @database
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @database
    assert_response :success
  end

  test "should update database" do
    put :update, id: @database, database: { Road: @database.Road, address1: @database.address1, address2: @database.address2, agency_case: @database.agency_case, agent_contact: @database.agent_contact, agent_tel: @database.agent_tel, analy_support: @database.analy_support, applicable: @database.applicable, citizenship1: @database.citizenship1, citizenship2: @database.citizenship2, city1: @database.city1, city2: @database.city2, city: @database.city, cjis: @database.cjis, comp_location: @database.comp_location, conceal_method: @database.conceal_method, country: @database.country, date_of_seizure: @database.date_of_seizure, day_of_the_week: @database.day_of_the_week, direction: @database.direction, dob1: @database.dob1, dob2: @database.dob2, drug1: @database.drug1, drug1_amount: @database.drug1_amount, drug2: @database.drug2, drug2_amount: @database.drug2_amount, drug3: @database.drug3, drug3_amount: @database.drug3_amount, extra10: @database.extra10, extra11: @database.extra11, extra12: @database.extra12, extra1: @database.extra1, extra2: @database.extra2, extra3: @database.extra3, extra4: @database.extra4, extra5: @database.extra5, extra6: @database.extra6, extra7: @database.extra7, extra8: @database.extra8, extra9: @database.extra9, false_compart: @database.false_compart, gender1: @database.gender1, gender2: @database.gender2, hidta_initiative: @database.hidta_initiative, if_cargo: @database.if_cargo, investigating_agency: @database.investigating_agency, k9: @database.k9, lab_inhouse: @database.lab_inhouse, linked_to: @database.linked_to, mile_marker: @database.mile_marker, misc1: @database.misc1, misc2: @database.misc2, name1: @database.name1, name2: @database.name2, name_of_organization: @database.name_of_organization, oln1: @database.oln1, oln2: @database.oln2, picture1: @database.picture1, picture2: @database.picture2, price2: @database.price2, price3: @database.price3, rice1: @database.rice1, seizing_taskforce: @database.seizing_taskforce, she_operation: @database.she_operation, ssn1: @database.ssn1, ssn2: @database.ssn2, state1: @database.state1, state2: @database.state2, state: @database.state, street_address: @database.street_address, subject1: @database.subject1, subject2: @database.subject2, support_method: @database.support_method, tel_data2: @database.tel_data2, tel_data2: @database.tel_data2, tel_no1: @database.tel_no1, tel_no2: @database.tel_no2, time: @database.time, type_of_event: @database.type_of_event, vehicle1_color: @database.vehicle1_color, vehicle1_reg_owner: @database.vehicle1_reg_owner, vehicle1_state: @database.vehicle1_state, vehicle1lic_place: @database.vehicle1lic_place, vehicle1make: @database.vehicle1make, vehicle1model: @database.vehicle1model, vehicle1year: @database.vehicle1year, vehicle2_color: @database.vehicle2_color, vehicle2_reg_owner: @database.vehicle2_reg_owner, vehicle2_state: @database.vehicle2_state, vehicle2lic_place: @database.vehicle2lic_place, vehicle2make: @database.vehicle2make, vehicle2model2: @database.vehicle2model2, vehicle2year: @database.vehicle2year, vehicle_seized: @database.vehicle_seized, zip1: @database.zip1, zip2: @database.zip2, zip: @database.zip }
    assert_redirected_to database_path(assigns(:database))
  end

  test "should destroy database" do
    assert_difference('Database.count', -1) do
      delete :destroy, id: @database
    end

    assert_redirected_to databases_path
  end
end
