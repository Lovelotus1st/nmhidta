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

ActiveRecord::Schema.define(:version => 20131106040047) do

  create_table "databases", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "dob"
    t.string   "address"
    t.string   "ssn"
    t.string   "fbin"
    t.string   "picture"
    t.string   "other1"
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.string   "owner"
    t.string   "registration"
    t.string   "other2"
    t.string   "city"
    t.string   "state"
    t.string   "road"
    t.string   "mile_marker"
    t.string   "origin"
    t.string   "destination"
    t.string   "other3"
    t.string   "other4"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
