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
      post :create, database: { address: @database.address, city: @database.city, destination: @database.destination, dob: @database.dob, fbin: @database.fbin, first_name: @database.first_name, last_name: @database.last_name, make: @database.make, mile_marker: @database.mile_marker, model: @database.model, origin: @database.origin, other1: @database.other1, other2: @database.other2, other3: @database.other3, other4: @database.other4, owner: @database.owner, picture: @database.picture, registration: @database.registration, road: @database.road, ssn: @database.ssn, state: @database.state, year: @database.year }
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
    put :update, id: @database, database: { address: @database.address, city: @database.city, destination: @database.destination, dob: @database.dob, fbin: @database.fbin, first_name: @database.first_name, last_name: @database.last_name, make: @database.make, mile_marker: @database.mile_marker, model: @database.model, origin: @database.origin, other1: @database.other1, other2: @database.other2, other3: @database.other3, other4: @database.other4, owner: @database.owner, picture: @database.picture, registration: @database.registration, road: @database.road, ssn: @database.ssn, state: @database.state, year: @database.year }
    assert_redirected_to database_path(assigns(:database))
  end

  test "should destroy database" do
    assert_difference('Database.count', -1) do
      delete :destroy, id: @database
    end

    assert_redirected_to databases_path
  end
end
