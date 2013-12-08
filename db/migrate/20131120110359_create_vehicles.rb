class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :database_id
      t.string :make
      t.string :model
      t.string :year
      t.string :lic_plate
      t.string :state
      t.string :color
      t.string :registered_owner
      t.string :note

      t.timestamps
    end
  end
end
