class CreateDatabases < ActiveRecord::Migration
  def change
    create_table :databases do |t|
      t.string :last_name
      t.string :first_name
      t.string :dob
      t.string :address
      t.string :ssn
      t.string :fbin
      t.string :picture
      t.string :other1
      t.string :make
      t.string :model
      t.string :year
      t.string :owner
      t.string :registration
      t.string :other2
      t.string :city
      t.string :state
      t.string :road
      t.string :mile_marker
      t.string :origin
      t.string :destination
      t.string :other3
      t.string :other4

      t.timestamps
    end
  end
end
