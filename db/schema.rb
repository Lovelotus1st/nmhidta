# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131120035304) do

  create_table "databases", :force => true do |t|
    t.string   "seizing_taskforce"
    t.string   "investigating_agency"
    t.string   "agency_case"
    t.string   "cjis"
    t.string   "hidta_initiative"
    t.date     "date_of_seizure",      :limit => 255
    t.time     "time",                 :limit => 255
    t.string   "day_of_the_week"
    t.string   "type_of_event"
    t.string   "she_operation"
    t.string   "Road"
    t.string   "mile_marker"
    t.string   "direction"
    t.string   "street_address"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zip"
    t.string   "drug1"
    t.string   "drug1_amount"
    t.string   "rice1"
    t.string   "drug2"
    t.string   "drug2_amount"
    t.string   "price2"
    t.string   "drug3"
    t.string   "drug3_amount"
    t.string   "price3"
    t.string   "name1"
    t.date     "dob1",                 :limit => 255
    t.string   "ssn1"
    t.string   "oln1"
    t.string   "gender1"
    t.string   "address1"
    t.string   "city1"
    t.string   "state1"
    t.string   "zip1"
    t.string   "subject1"
    t.string   "misc1"
    t.string   "citizenship1"
    t.string   "picture1"
    t.string   "tel_no1"
    t.string   "tel_data2"
    t.string   "name2"
    t.date     "dob2",                 :limit => 255
    t.string   "ssn2"
    t.string   "oln2"
    t.string   "gender2"
    t.string   "address2"
    t.string   "city2"
    t.string   "state2"
    t.string   "zip2"
    t.string   "subject2"
    t.string   "misc2"
    t.string   "citizenship2"
    t.string   "picture2"
    t.string   "tel_no2"
    t.string   "vehicle_seized"
    t.string   "vehicle1make"
    t.string   "vehicle1model"
    t.string   "vehicle1year"
    t.string   "vehicle1lic_place"
    t.string   "vehicle1_state"
    t.string   "vehicle1_color"
    t.string   "vehicle1_reg_owner"
    t.string   "vehicle2make"
    t.string   "vehicle2model2"
    t.string   "vehicle2year"
    t.string   "vehicle2lic_place"
    t.string   "vehicle2_state"
    t.string   "vehicle2_color"
    t.string   "vehicle2_reg_owner"
    t.string   "linked_to"
    t.string   "name_of_organization"
    t.string   "agent_contact"
    t.string   "agent_tel"
    t.string   "analy_support"
    t.string   "support_method"
    t.string   "conceal_method"
    t.string   "false_compart"
    t.string   "comp_location"
    t.string   "if_cargo"
    t.string   "k9"
    t.string   "lab_inhouse"
    t.string   "applicable"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.string   "extra6"
    t.string   "extra7"
    t.string   "extra8"
    t.string   "extra9"
    t.string   "extra10"
    t.string   "extra11"
    t.string   "extra12"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "drugs", :force => true do |t|
    t.integer  "database_id"
    t.string   "drug_name"
    t.decimal  "drug_amount"
    t.decimal  "drug_price"
    t.text     "weapons"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
