class FirstChange < ActiveRecord::Migration
  def up
  end

  def down
  end
  
  def change
    change_column :databases, :date_of_seizure, :datetime
    change_column :databases, :time, :time
    change_column :databases, :dob1, :date
    change_column :databases, :dob2, :date
  end
  
end
