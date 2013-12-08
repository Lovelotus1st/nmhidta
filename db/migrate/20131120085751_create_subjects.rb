class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :database_id
      t.string :name
      t.date :dob
      t.integer :ssn
      t.integer :oln
      t.string :gender
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :suspect
      t.string :misc
      t.string :citizenship
      t.text :note

      t.timestamps
    end
  end
end
